import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'common_first_name_form_component_model.dart';
export 'common_first_name_form_component_model.dart';

class CommonFirstNameFormComponentWidget extends StatefulWidget {
  const CommonFirstNameFormComponentWidget({Key? key}) : super(key: key);

  @override
  _CommonFirstNameFormComponentWidgetState createState() =>
      _CommonFirstNameFormComponentWidgetState();
}

class _CommonFirstNameFormComponentWidgetState
    extends State<CommonFirstNameFormComponentWidget> {
  late CommonFirstNameFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonFirstNameFormComponentModel());

    _model.firstNameTextFieldController ??= TextEditingController();
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
                'First Name',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
              ),
            ),
            TextFormField(
              controller: _model.firstNameTextFieldController,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'eg: James is first name  in James Drew',
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
                    color: Color(0xFF2EB828),
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
              keyboardType: TextInputType.name,
              validator: _model.firstNameTextFieldControllerValidator
                  .asValidator(context),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
