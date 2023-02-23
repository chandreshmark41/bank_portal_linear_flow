import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_existing_customer_component_model.dart';
export 'select_existing_customer_component_model.dart';

class SelectExistingCustomerComponentWidget extends StatefulWidget {
  const SelectExistingCustomerComponentWidget({Key? key}) : super(key: key);

  @override
  _SelectExistingCustomerComponentWidgetState createState() =>
      _SelectExistingCustomerComponentWidgetState();
}

class _SelectExistingCustomerComponentWidgetState
    extends State<SelectExistingCustomerComponentWidget> {
  late SelectExistingCustomerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectExistingCustomerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'Are you an existing  customer?',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.updatePage(() {
                            FFAppState().currentState =
                                FFAppState().existingCustomer;
                          });
                        },
                        text: 'Yes',
                        options: FFButtonOptions(
                          width: 80,
                          height: 40,
                          color: FlutterFlowTheme.of(context).lineColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          hoverColor:
                              FlutterFlowTheme.of(context).axisRubyColor,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).axisRubyColor,
                            width: 1,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.updatePage(() {
                            FFAppState().currentState =
                                FFAppState().notExistingCustomer;
                          });
                        },
                        text: 'No',
                        options: FFButtonOptions(
                          width: 80,
                          height: 40,
                          color: FlutterFlowTheme.of(context).lineColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          hoverColor:
                              FlutterFlowTheme.of(context).axisRubyColor,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).axisRubyColor,
                            width: 1,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                        ),
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
