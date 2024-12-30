import '/components/groups_n_categories_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categories_widget.dart' show CategoriesWidget;
import 'package:flutter/material.dart';

class CategoriesModel extends FlutterFlowModel<CategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for GroupsNCategories component.
  late GroupsNCategoriesModel groupsNCategoriesModel1;
  // Model for GroupsNCategories component.
  late GroupsNCategoriesModel groupsNCategoriesModel2;
  // Model for GroupsNCategories component.
  late GroupsNCategoriesModel groupsNCategoriesModel3;

  @override
  void initState(BuildContext context) {
    groupsNCategoriesModel1 =
        createModel(context, () => GroupsNCategoriesModel());
    groupsNCategoriesModel2 =
        createModel(context, () => GroupsNCategoriesModel());
    groupsNCategoriesModel3 =
        createModel(context, () => GroupsNCategoriesModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    groupsNCategoriesModel1.dispose();
    groupsNCategoriesModel2.dispose();
    groupsNCategoriesModel3.dispose();
  }
}
