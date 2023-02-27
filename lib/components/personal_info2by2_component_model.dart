import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PersonalInfo2by2ComponentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  Color? firstNameColor = Colors.white;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for firstNameTextField widget.
  TextEditingController? firstNameTextFieldController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldControllerValidator;
  String? _firstNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First Name is required';
    }

    return null;
  }

  // State field(s) for lastNameTextField widget.
  TextEditingController? lastNameTextFieldController;
  String? Function(BuildContext, String?)? lastNameTextFieldControllerValidator;
  String? _lastNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name is required';
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email is not valid';
    }
    return null;
  }

  // State field(s) for PhoneTextField widget.
  TextEditingController? phoneTextFieldController;
  final phoneTextFieldMask = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)? phoneTextFieldControllerValidator;
  String? _phoneTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required';
    }

    if (val.length < 10) {
      return 'entered number is less than 10 digits';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameTextFieldControllerValidator =
        _firstNameTextFieldControllerValidator;
    lastNameTextFieldControllerValidator =
        _lastNameTextFieldControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    phoneTextFieldControllerValidator = _phoneTextFieldControllerValidator;
  }

  void dispose() {
    firstNameTextFieldController?.dispose();
    lastNameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    phoneTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
