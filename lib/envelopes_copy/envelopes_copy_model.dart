import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'envelopes_copy_widget.dart' show EnvelopesCopyWidget;
import 'package:flutter/material.dart';

class EnvelopesCopyModel extends FlutterFlowModel<EnvelopesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    'idle',
    'open',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];

  @override
  void initState(BuildContext context) {
    for (var name in riveAnimationAnimationsList) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
        autoplay: false,
      ));
    }
  }

  @override
  void dispose() {}
}
