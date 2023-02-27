import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CommonMobileFormComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PhoneTextField widget.
  TextEditingController? phoneTextFieldController;
  final phoneTextFieldMask = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)? phoneTextFieldControllerValidator;
  String? _phoneTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number  is required';
    }

    if (val.length < 10) {
      return 'Mobile is less than 10 digits';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    phoneTextFieldControllerValidator = _phoneTextFieldControllerValidator;
  }

  void dispose() {
    phoneTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
