import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonFirstNameFormComponentModel extends FlutterFlowModel {
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

    if (val.length < 1) {
      return 'First name can\'t be empty';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstNameTextFieldControllerValidator =
        _firstNameTextFieldControllerValidator;
  }

  void dispose() {
    firstNameTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
