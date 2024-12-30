import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav_bar_floting_model.dart';
export 'nav_bar_floting_model.dart';

class NavBarFlotingWidget extends StatefulWidget {
  const NavBarFlotingWidget({super.key});

  @override
  State<NavBarFlotingWidget> createState() => _NavBarFlotingWidgetState();
}

class _NavBarFlotingWidgetState extends State<NavBarFlotingWidget> {
  late NavBarFlotingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarFlotingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 12.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                5.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),
            child: Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).textColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    offset: const Offset(
                      0.0,
                      2.0,
                    ),
                    spreadRadius: 2.0,
                  )
                ],
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 2.0,
                      buttonSize: 60.0,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: FaIcon(
                        FontAwesomeIcons.home,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 25.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_FLOTING_COMP_home_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed('Dashboard');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 2.0,
                      buttonSize: 60.0,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.format_list_bulleted_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_FLOTING_format_list_bulleted_sha');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('Transactions');
                      },
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            const Color(0xCAE41253)
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.34, -1.0),
                          end: const AlignmentDirectional(-0.34, 1.0),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 100.0,
                        fillColor: FlutterFlowTheme.of(context).black,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'NAV_BAR_FLOTING_COMP_add_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed('hjk');
                        },
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 2.0,
                      buttonSize: 60.0,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.list_alt,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_FLOTING_COMP_list_alt_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('Budgets');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 2.0,
                      buttonSize: 60.0,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.account_balance_outlined,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_FLOTING_account_balance_outlined');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('Accounts');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
