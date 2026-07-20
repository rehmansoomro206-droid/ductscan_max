import '/components/bottom_nav/bottom_nav_widget.dart';
import '/components/bottom_nav_child/bottom_nav_child_widget.dart';
import '/components/button/button_widget.dart';
import '/components/measurement_row/measurement_row_widget.dart';
import '/components/project_summary/project_summary_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  static String routeName = 'Dashboard';
  static String routePath = '/dashboard';

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'DUCTSCAN PRO',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .onPrimary70,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                        lineHeight: 1.1,
                                      ),
                                ),
                                Text(
                                  'Dashboard',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w900,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .onPrimary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                        lineHeight: 1.1,
                                      ),
                                ),
                              ].divide(SizedBox(height: 2)),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Scanner pressed ...');
                              },
                              text: 'Scanner',
                              options: FFButtonOptions(
                                height: 40,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                iconPadding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8,
                              buttonSize: 40,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.settings_rounded,
                                color: FlutterFlowTheme.of(context).onPrimary,
                                size: 24,
                              ),
                              onPressed: () async {
                                context.goNamed(SettingsWidget.routeName);
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.projectSummaryModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ProjectSummaryWidget(
                                  count: '12',
                                  icon: Icon(
                                    Icons.folder_open_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18,
                                  ),
                                  title: 'Active Projects',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.projectSummaryModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ProjectSummaryWidget(
                                  count: '148',
                                  icon: Icon(
                                    Icons.precision_manufacturing_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18,
                                  ),
                                  title: 'Total Scans',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 4)),
                        ),
                      ].divide(SizedBox(height: 8)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.goNamed(ARScannerWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.buttonModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ButtonWidget(
                                  icon: Icon(
                                    Icons.architecture_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  iconPresent: true,
                                  iconEndPresent: false,
                                  content: 'NEW SCAN',
                                  variant: 'primary',
                                  size: 'medium',
                                  fullWidth: true,
                                  loading: false,
                                  disabled: false,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(ProjectHistoryWidget.routeName);
                            },
                            child: wrapWithModel(
                              model: _model.buttonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                icon: Icon(
                                  Icons.history_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                                iconPresent: true,
                                iconEndPresent: false,
                                content: 'HISTORY',
                                variant: 'outline',
                                size: 'medium',
                                fullWidth: false,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).surfaceVariant,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Text(
                            'RECENT MEASUREMENTS',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.1,
                                ),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '60.0',
                        date: '10:45 AM',
                        dims: '24\" x 12\" x 120\"',
                        shape: 'rectangular',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '37.7',
                        date: '09:12 AM',
                        dims: 'Ø 18\" x 96\"',
                        shape: 'circular',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '40.0',
                        date: 'Yesterday',
                        dims: '36\" x 24\" x 48\"',
                        shape: 'rectangular',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '80.0',
                        date: 'Yesterday',
                        dims: '12\" x 12\" x 240\"',
                        shape: 'rectangular',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '15.7',
                        date: 'Oct 24',
                        dims: 'Ø 12\" x 60\"',
                        shape: 'circular',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.measurementRowModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: MeasurementRowWidget(
                        area: '30.0',
                        date: 'Oct 23',
                        dims: '48\" x 12\" x 36\"',
                        shape: 'rectangular',
                      ),
                    ),
                    Container(
                      height: 80,
                    ),
                  ].divide(SizedBox(height: 0)),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.bottomNavModel,
                      updateCallback: () => safeSetState(() {}),
                      child: BottomNavWidget(
                        child: () => BottomNavChildWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
