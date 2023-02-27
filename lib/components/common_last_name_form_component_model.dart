import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonLastNameFormComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for lastNameTextField widget.
  TextEditingController? lastNameTextFieldController;
  String? Function(BuildContext, String?)? lastNameTextFieldControllerValidator;
  String? _lastNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name  is required';
    }

    if (val.length < 1) {
      return 'Last Name can\'t be empty';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    lastNameTextFieldControllerValidator =
        _lastNameTextFieldControllerValidator;
  }

  void dispose() {
    lastNameTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
