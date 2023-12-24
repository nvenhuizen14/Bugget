// ignore_for_file: unused_import, avoid_print

import 'dart:async';
import 'dart:convert';
import 'package:bugget/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plaid_flutter/plaid_flutter.dart';

import '../auth/supabase_auth/supabase_user_provider.dart';

class PlaidService {

  LinkConfiguration? _configuration;
  StreamSubscription<LinkEvent>? _streamEvent;
  StreamSubscription<LinkExit>? _streamExit;
  StreamSubscription<LinkSuccess>? _streamSuccess;
  // ignore: unused_field
  LinkObject? _successObject;

  // Initialize Plaid Link with necessary event listeners
  void initializePlaid() {
    _streamEvent = PlaidLink.onEvent.listen(_onEvent);
    _streamExit = PlaidLink.onExit.listen(_onExit);
    _streamSuccess = PlaidLink.onSuccess.listen(_onSuccess);
  }

  Future<String?> fetchLinkToken() async {
    try {
      // Get the logged-in user's ID as a UUID string
      final userId = SupaFlow.client.auth.currentUser?.id;
      if (userId == null) {
        print('No user ID available for the current user.');
        return null;
      }

      // Include the client_user_id in the body of the request
      var response = await http.post(
        Uri.parse('https://n8n.nvsolutionss.com/fetchLinkToken'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'client_user_id': userId, // Include the client_user_id
        }),
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data['link_token'];
      } else {
        print('Failed to get link token: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error fetching link token: $e');
      return null;
    }


  }


  // Open Plaid Link with the configuration
  void openPlaidLink(String linkToken) {
    _configuration = LinkTokenConfiguration(token: linkToken);
    if (_configuration != null) {
      PlaidLink.open(configuration: _configuration!);
    }
  }

  // Event handler for Plaid Link events
  void _onEvent(LinkEvent event) {
    final name = event.name;
    final metadata = event.metadata.description();
    print("onEvent: $name, metadata: $metadata");
  }

  void _onSuccess(LinkSuccess event) {
    final publicToken = event.publicToken;
    final metadata = event.metadata.description();
    print("onSuccess: $publicToken, metadata: $metadata");
    _successObject = event;

    // Send the public token to your server for token exchange
    _sendPublicTokenToServer(publicToken);
  }

  // Method to send the public token to your server
  Future<void> _sendPublicTokenToServer(String publicToken) async {
    try {
      // Get the logged-in user's ID as a UUID string
      final userId = SupaFlow.client.auth.currentUser?.id;
      if (userId == null) {
        print('No user ID available for the current user.');
        return;
      }

      var response = await http.post(
        Uri.parse('https://n8n.nvsolutionss.com/publicToken'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'public_token': publicToken,
          'client_user_id': userId
        }),
      );

      if (response.statusCode == 200) {
        print('Public token sent to server successfully');
        // Handle the response or further actions
      } else {
        print('Failed to send public token to server: ${response.statusCode}');
        // Handle the failure
      }
    } catch (e) {
      print('Error sending public token to server: $e');
      // Handle the error
    }
  }


  // Event handler for exiting Plaid Link
  void _onExit(LinkExit event) {
    final metadata = event.metadata.description();
    final error = event.error?.description();
    print("onExit metadata: $metadata, error: $error");
  }

  // Dispose method to clean up streams
  void dispose() {
    _streamEvent?.cancel();
    _streamExit?.cancel();
    _streamSuccess?.cancel();
  }
}
