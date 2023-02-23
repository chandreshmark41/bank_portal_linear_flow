import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trancation_e_m_i_component_model.dart';
export 'trancation_e_m_i_component_model.dart';

class TrancationEMIComponentWidget extends StatefulWidget {
  const TrancationEMIComponentWidget({Key? key}) : super(key: key);

  @override
  _TrancationEMIComponentWidgetState createState() =>
      _TrancationEMIComponentWidgetState();
}

class _TrancationEMIComponentWidgetState
    extends State<TrancationEMIComponentWidget> {
  late TrancationEMIComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrancationEMIComponentModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 584.1,
          decoration: BoxDecoration(),
          child: Align(
            alignment: AlignmentDirectional(-0.05, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 0),
                  child: Container(
                    width: 1170.9,
                    height: 185.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Text(
                                ' Dear customer,',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Text(
                                '  Here are your recent transanctions eligible for easy EMI conversion.',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Text(
                                '  Please select the EMI checkbox & tenure, and click on proceed',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.96, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Text(
                                ' Card Number is 4111XXXXXXXX9673',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 28, 20, 0),
                    child: Container(
                      width: 1032.6,
                      height: 244,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).axisMarronColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.2, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            85, 0, 96, 0),
                                        child: Text(
                                          'Merchant Name',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          60, 0, 53, 0),
                                      child: Text(
                                        'Transcation Date',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          55, 0, 57, 0),
                                      child: Text(
                                        'Transcation Amount',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          18, 0, 0, 0),
                                      child: Text(
                                        'EMI',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1030,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.2, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 156, 0),
                                        child: Text(
                                          'CRED, MUMBAI, IN',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          75, 0, 89, 0),
                                      child: Text(
                                        '2023-01-04',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          92, 0, 112, 0),
                                      child: Text(
                                        'Rs.101156.5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            Color(0xFFF5F5F5),
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue1 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue1 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFFF5F5F5),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1030,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.2, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 230, 0),
                                        child: Text(
                                          '10073240',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          75, 0, 90, 0),
                                      child: Text(
                                        '2023-01-02',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          95, 0, 128, 0),
                                      child: Text(
                                        'Rs.51250',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            Color(0xFFF5F5F5),
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue2 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue2 =
                                              newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                        checkColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1030,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.2, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 165, 0),
                                        child: Text(
                                          'CRED,MUMBAI,IN',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          70, 0, 95, 0),
                                      child: Text(
                                        '2023-01-02',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          95, 0, 106, 0),
                                      child: Text(
                                        'Rs.49834.9',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 55,
                                      child: VerticalDivider(
                                        thickness: 2.5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            Color(0xFFF5F5F5),
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue3 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue3 =
                                              newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1030,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.updatePage(() {
                          FFAppState().currentState = 'currentState';
                        });
                      },
                      text: 'Proceed',
                      options: FFButtonOptions(
                        width: 130,
                        height: 50,
                        color: FlutterFlowTheme.of(context).lineColor,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).axisMarronColor,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        hoverColor: FlutterFlowTheme.of(context).axisRubyColor,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                          width: 1,
                        ),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
