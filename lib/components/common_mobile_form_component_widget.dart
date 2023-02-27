import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'common_mobile_form_component_model.dart';
export 'common_mobile_form_component_model.dart';

class CommonMobileFormComponentWidget extends StatefulWidget {
  const CommonMobileFormComponentWidget({Key? key}) : super(key: key);

  @override
  _CommonMobileFormComponentWidgetState createState() =>
      _CommonMobileFormComponentWidgetState();
}

class _CommonMobileFormComponentWidgetState
    extends State<CommonMobileFormComponentWidget> {
  late CommonMobileFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonMobileFormComponentModel());

    _model.phoneTextFieldController ??= TextEditingController();
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

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Container(
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
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _model.phoneTextFieldController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '  enter 10 digit mobile number',
                      hintStyle: GoogleFonts.getFont(
                        'Roboto',
                        fontSize: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
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
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).axisRubyColor,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                    keyboardType: TextInputType.number,
                    validator: _model.phoneTextFieldControllerValidator
                        .asValidator(context),
                    inputFormatters: [_model.phoneTextFieldMask],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
