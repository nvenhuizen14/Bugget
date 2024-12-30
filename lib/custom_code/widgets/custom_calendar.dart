// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late Future<List<Meeting>> _meetings;

  @override
  void initState() {
    super.initState();
    _meetings = fetchMeetings();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Meeting>>(
      future: _meetings,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No events found'));
        } else {
          return SfCalendar(
            view: CalendarView.month,
            dataSource: MeetingDataSource(snapshot.data!),
            monthViewSettings: MonthViewSettings(showAgenda: true),
            onTap: (CalendarTapDetails details) {
              if (details.targetElement == CalendarElement.appointment) {
                final Meeting meeting = details.appointments![0] as Meeting;
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Appointment details'),
                      content: Text(
                          '${meeting.eventName}\nId: ${meeting.id}\nRecurrenceId: ${meeting.recurrenceId}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          );
        }
      },
    );
  }
}

class MeetingDataSource extends CalendarDataSource<Meeting> {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  Object? getId(int index) {
    return appointments![index].id;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background ?? Colors.blue;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }

  @override
  Meeting? convertAppointmentToObject(
      Meeting? customData, Appointment appointment) {
    return Meeting(
      from: appointment.startTime,
      to: appointment.endTime,
      eventName: appointment.subject,
      background: appointment.color,
      isAllDay: appointment.isAllDay,
      id: appointment.id,
      recurrenceRule: appointment.recurrenceRule,
      recurrenceId: appointment.recurrenceId,
      exceptionDates: appointment.recurrenceExceptionDates,
    );
  }
}

class Meeting {
  Meeting({
    required this.from,
    required this.to,
    this.id,
    this.recurrenceId,
    this.eventName = '',
    this.isAllDay = false,
    this.background,
    this.exceptionDates,
    this.recurrenceRule,
  });

  DateTime from;
  DateTime to;
  Object? id;
  Object? recurrenceId;
  String eventName;
  bool isAllDay;
  Color? background;
  String? recurrenceRule;
  List<DateTime>? exceptionDates;
}

Future<List<Meeting>> fetchMeetings() async {
  // Fetching specific columns from the Supabase 'event' table
  final response = await Supabase.instance.client
      .from('event')
      .select('uid, title, startDate, endDate, startTime, endTime');

  // Check if there was an error in the query
  if (response == null) {
    throw Exception('Failed to load events: No response from server');
  }

  // Map the response data to Meeting objects
  final data = response as List<dynamic>;
  return data.map((e) {
    return Meeting(
      from: DateTime.parse('${e['startDate']} ${e['startTime']}'),
      to: e['endDate'] != null
          ? DateTime.parse('${e['endDate']} ${e['endTime']}')
          : DateTime.parse('${e['startDate']} ${e['startTime']}'),
      eventName: e['title'],
      id: e[
          'uid'], // Ensure to use 'uid' as it matches the primary key in your schema
      background: Colors.blue, // Set a default or dynamic color
    );
  }).toList();
}
