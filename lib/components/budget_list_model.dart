import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budget_list_widget.dart' show BudgetListWidget;
import 'package:flutter/material.dart';

class BudgetListModel extends FlutterFlowModel<BudgetListWidget> {
  ///  Local state fields for this component.

  List<GroupSummaryRow> groupSummary = [];
  void addToGroupSummary(GroupSummaryRow item) => groupSummary.add(item);
  void removeFromGroupSummary(GroupSummaryRow item) =>
      groupSummary.remove(item);
  void removeAtIndexFromGroupSummary(int index) => groupSummary.removeAt(index);
  void insertAtIndexInGroupSummary(int index, GroupSummaryRow item) =>
      groupSummary.insert(index, item);
  void updateGroupSummaryAtIndex(
          int index, Function(GroupSummaryRow) updateFn) =>
      groupSummary[index] = updateFn(groupSummary[index]);

  bool onExpanded = false;

  String groupName = 'null';

  String groupActual = 'null';

  double groupPercentage = 0.0;

  String groupLimit = 'null';

  Color? barColor = const Color(0xA7550F04);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
