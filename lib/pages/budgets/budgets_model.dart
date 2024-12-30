import '/backend/supabase/supabase.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/total_budget_spent_graph/total_budget_spent_graph_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budgets_widget.dart' show BudgetsWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BudgetsModel extends FlutterFlowModel<BudgetsWidget> {
  ///  Local state fields for this page.

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

  List<BudgetingRow> budgetingTable = [];
  void addToBudgetingTable(BudgetingRow item) => budgetingTable.add(item);
  void removeFromBudgetingTable(BudgetingRow item) =>
      budgetingTable.remove(item);
  void removeAtIndexFromBudgetingTable(int index) =>
      budgetingTable.removeAt(index);
  void insertAtIndexInBudgetingTable(int index, BudgetingRow item) =>
      budgetingTable.insert(index, item);
  void updateBudgetingTableAtIndex(
          int index, Function(BudgetingRow) updateFn) =>
      budgetingTable[index] = updateFn(budgetingTable[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for TotalBudgetSpentGraph component.
  late TotalBudgetSpentGraphModel totalBudgetSpentGraphModel;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  @override
  void initState(BuildContext context) {
    totalBudgetSpentGraphModel =
        createModel(context, () => TotalBudgetSpentGraphModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    totalBudgetSpentGraphModel.dispose();
    navBarFlotingModel.dispose();
  }
}
