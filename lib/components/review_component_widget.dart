import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_component_model.dart';
export 'review_component_model.dart';

class ReviewComponentWidget extends StatefulWidget {
  const ReviewComponentWidget({
    Key? key,
    this.firstName,
    this.lastName,
    this.mobile,
    this.email,
    this.adharNumber,
    this.panNumber,
    this.houseNumber,
    this.street,
    this.landmark,
    this.state,
    this.city,
    this.pincode,
  }) : super(key: key);

  final String? firstName;
  final String? lastName;
  final String? mobile;
  final String? email;
  final String? adharNumber;
  final String? panNumber;
  final String? houseNumber;
  final String? street;
  final String? landmark;
  final String? state;
  final String? city;
  final String? pincode;

  @override
  _ReviewComponentWidgetState createState() => _ReviewComponentWidgetState();
}

class _ReviewComponentWidgetState extends State<ReviewComponentWidget> {
  late ReviewComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewComponentModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).axisRubyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Personal',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 2,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).axisRubyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Address',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 2,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).axisRubyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Review',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 2,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).axisRubyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Personal Information',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Wrap(
              spacing: 80,
              runSpacing: 0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'First Name',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.firstName!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Last Name',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.lastName!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Mobile',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.mobile!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Email',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.email!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Adhar Number',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.adharNumber!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Pan Number',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.panNumber!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
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
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Address Information',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Wrap(
              spacing: 80,
              runSpacing: 0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'House Number',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.houseNumber!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Street',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.street!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Landmark',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.landmark!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'State',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.state!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'City',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.city!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Container(
                    width: 387,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Pincode',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              widget.pincode!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
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
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.updatePage(() {
                      FFAppState().currentState = FFAppState().address;
                    });
                  },
                  text: 'Back',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).lineColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).axisMarronColor,
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
                    hoverTextColor: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.updatePage(() {
                      FFAppState().currentState = FFAppState().existingCustomer;
                    });
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Account has been created'),
                          content: Text(
                              'Your customerId is 4000001. Please log in.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  text: 'Submit',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).lineColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).axisMarronColor,
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
                    hoverTextColor: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
