import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/total_budget_spent_graph/total_budget_spent_graph_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'budgets_widget.dart' show BudgetsWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BudgetsModel extends FlutterFlowModel<BudgetsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for TotalBudgetSpentGraph component.
  late TotalBudgetSpentGraphModel totalBudgetSpentGraphModel;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    totalBudgetSpentGraphModel =
        createModel(context, () => TotalBudgetSpentGraphModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    totalBudgetSpentGraphModel.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
