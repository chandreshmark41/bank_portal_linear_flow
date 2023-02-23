import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otp_component_model.dart';
export 'otp_component_model.dart';

class OtpComponentWidget extends StatefulWidget {
  const OtpComponentWidget({Key? key}) : super(key: key);

  @override
  _OtpComponentWidgetState createState() => _OtpComponentWidgetState();
}

class _OtpComponentWidgetState extends State<OtpComponentWidget> {
  late OtpComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpComponentModel());

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 100, 15, 0),
            child: Container(
              width: 672.7,
              constraints: BoxConstraints(
                maxWidth: 650,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.83, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).axisRubyColor,
                            size: 35,
                          ),
                          onPressed: () async {
                            _model.updatePage(() {
                              FFAppState().currentState =
                                  FFAppState().phoneLogIn;
                            });
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.75, -0.15),
                        child: Text(
                          'Enter OTP:',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(150, 0, 30, 0),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 6,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: false,
                          autoFocus: true,
                          showCursor: true,
                          cursorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          obscureText: false,
                          pinTheme: PinTheme(
                            fieldHeight: 40,
                            fieldWidth: 20,
                            borderWidth: 2,
                            borderRadius: BorderRadius.circular(18),
                            shape: PinCodeFieldShape.underline,
                            activeColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            inactiveColor: Color(0xFB6C7478),
                            selectedColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            activeFillColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            inactiveFillColor: Color(0xFB6C7478),
                            selectedFillColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) => {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                if (_model.pinCodeController!.text == FFAppState().OTP) {
                  _model.updatePage(() {
                    FFAppState().currentState = FFAppState().emiTransaction;
                  });
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Incorrect OTP'),
                        content: Text('Please enter correct OTP (123456)'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                }
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
    );
  }
}
