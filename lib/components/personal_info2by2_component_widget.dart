import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'personal_info2by2_component_model.dart';
export 'personal_info2by2_component_model.dart';

class PersonalInfo2by2ComponentWidget extends StatefulWidget {
  const PersonalInfo2by2ComponentWidget({Key? key}) : super(key: key);

  @override
  _PersonalInfo2by2ComponentWidgetState createState() =>
      _PersonalInfo2by2ComponentWidgetState();
}

class _PersonalInfo2by2ComponentWidgetState
    extends State<PersonalInfo2by2ComponentWidget> {
  late PersonalInfo2by2ComponentModel _model;
  bool _autoValidate=false;
  bool _validateFieldOne=false;

  late AutovalidateMode firstNameAutoValidateMode;
  late AutovalidateMode lastNameAutoValidateMode;
  late AutovalidateMode emailAutoValidateMode;
  late AutovalidateMode phoneAutoValidateMode;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalInfo2by2ComponentModel());

    _model.firstNameTextFieldController ??= TextEditingController();
    _model.lastNameTextFieldController ??= TextEditingController();
    _model.emailTextFieldController ??= TextEditingController();
    _model.phoneTextFieldController ??= TextEditingController();

    firstNameAutoValidateMode = AutovalidateMode.onUserInteraction;
    lastNameAutoValidateMode = AutovalidateMode.disabled;
    emailAutoValidateMode = AutovalidateMode.disabled;
    phoneAutoValidateMode = AutovalidateMode.disabled;

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

    return Visibility(
      visible: FFAppState().currentState == FFAppState().notExistingCustomer,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
                child: Text(
                  'Personal Details',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                      ),
                ),
              ),
              Wrap(
                spacing: 50,
                runSpacing: 0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 387,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'First Name',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                          ),
                        ),
                        TextFormField(
                          controller: _model.firstNameTextFieldController,
                          autovalidateMode: firstNameAutoValidateMode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          // onTap: () {
                          //   setState(() {
                          //     firstNameAutoValidateMode = AutovalidateMode.always;
                          //   });
                          // },
                          decoration: InputDecoration(
                            hintText: 'eg: James is first name  in James Drew',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontSize: 18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF2EB828),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18,
                                letterSpacing: 0.5,
                              ),
                          keyboardType: TextInputType.name,
                          validator: _model
                              .firstNameTextFieldControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z]'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 387,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Last Name',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                          ),
                        ),
                        TextFormField(
                          controller: _model.lastNameTextFieldController,
                          autovalidateMode: lastNameAutoValidateMode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.words,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              lastNameAutoValidateMode = AutovalidateMode.onUserInteraction;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'eg: Drew is last name  in James Drew',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontSize: 18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF2EB828),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18,
                                letterSpacing: 0.5,
                              ),
                          keyboardType: TextInputType.name,
                          validator: _model.lastNameTextFieldControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z]'))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 50,
                runSpacing: 0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 387,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Email',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                          ),
                        ),
                        TextFormField(
                          controller: _model.emailTextFieldController,
                          autovalidateMode: emailAutoValidateMode,
                          autofocus: true,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              emailAutoValidateMode = AutovalidateMode.onUserInteraction;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'eg: abc@xyz.com',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontSize: 18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF34C50F),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).axisRubyColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18,
                                letterSpacing: 0.5,
                              ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.emailTextFieldControllerValidator
                              .asValidator(context),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 387,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Mobile ',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.phoneTextFieldController,
                                autovalidateMode: phoneAutoValidateMode,
                                autofocus: true,
                                obscureText: false,
                                onTap: () {
                                  setState(() {
                                    phoneAutoValidateMode = AutovalidateMode.onUserInteraction;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: '  enter 10 digit mobile number',
                                  hintStyle: GoogleFonts.getFont(
                                    'Roboto',
                                    fontSize: 18,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF34C50F),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .axisRubyColor,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .axisRubyColor,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lato',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                    ),
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .phoneTextFieldControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.phoneTextFieldMask],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.updatePage(() {
                            FFAppState().currentState = 'currentState';
                          });
                        },
                        text: 'Back',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).lineColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
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
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          _model.updatePage(() {
                            FFAppState().currentState = FFAppState().address;
                          });
                        },
                        text: 'Next',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).lineColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .axisMarronColor,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
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
            ],
          ),
        ),
      ),
    );
  }
}
