import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonEmailFormComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email  is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
  }

  void dispose() {
    emailTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
