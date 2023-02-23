import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerIdLogInComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userIdField widget.
  TextEditingController? userIdFieldController;
  String? Function(BuildContext, String?)? userIdFieldControllerValidator;
  // State field(s) for pwdField widget.
  TextEditingController? pwdFieldController;
  late bool pwdFieldVisibility;
  String? Function(BuildContext, String?)? pwdFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pwdFieldVisibility = false;
  }

  void dispose() {
    userIdFieldController?.dispose();
    pwdFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
