import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'mobile_log_in_component_model.dart';
export 'mobile_log_in_component_model.dart';

class MobileLogInComponentWidget extends StatefulWidget {
  const MobileLogInComponentWidget({Key? key}) : super(key: key);

  @override
  _MobileLogInComponentWidgetState createState() =>
      _MobileLogInComponentWidgetState();
}

class _MobileLogInComponentWidgetState
    extends State<MobileLogInComponentWidget> {
  late MobileLogInComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileLogInComponentModel());

    _model.mobileNoFieldController ??= TextEditingController();
    _model.pANFieldController ??= TextEditingController();
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Container(
            width: 727,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().currentState =
                                FFAppState().existingCustomer;
                          });
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Text(
                              'Mobile No:',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(74, 0, 50, 0),
                            child: TextFormField(
                              controller: _model.mobileNoFieldController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Mobile Number',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x3B05070D),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.number,
                              validator: _model.mobileNoFieldControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.mobileNoFieldMask],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'Date of birth:',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 54.7,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                              child: Text(
                                valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', _model.datePicked),
                                  'Please Select Date',
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                        child: InkWell(
                          onTap: () async {
                            final _datePickedDate = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2050),
                            );

                            if (_datePickedDate != null) {
                              setState(() {
                                _model.datePicked = DateTime(
                                  _datePickedDate.year,
                                  _datePickedDate.month,
                                  _datePickedDate.day,
                                );
                              });
                            }
                          },
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 150, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).axisMarronColor,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'OR',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'PAN:',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .axisMarronColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(130, 0, 50, 0),
                          child: TextFormField(
                            controller: _model.pANFieldController,
                            autofocus: true,
                            textCapitalization: TextCapitalization.characters,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Your PAN',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x3B05070D),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                    ),
                            textAlign: TextAlign.start,
                            validator: _model.pANFieldControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.pANFieldMask],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: FFButtonWidget(
            onPressed: () async {
              if (_model.mobileNoFieldController.text != null &&
                  _model.mobileNoFieldController.text != '') {
                if ((/* NOT RECOMMENDED */ _model.pANFieldController.text ==
                        'true') ||
                    (_model.datePicked != null)) {
                  _model.updatePage(() {
                    FFAppState().currentState = FFAppState().otpVerification;
                  });
                } else {
                  _model.updatePage(() {
                    FFAppState().currentState = FFAppState().panOrDobError;
                  });
                }
              } else {
                _model.updatePage(() {
                  FFAppState().currentState = FFAppState().phoneNumberError;
                });
              }
            },
            text: 'Send OTP',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: FlutterFlowTheme.of(context).lineColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).axisMarronColor,
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
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
    );
  }
}
