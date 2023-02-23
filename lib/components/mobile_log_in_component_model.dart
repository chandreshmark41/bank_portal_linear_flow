import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class MobileLogInComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mobileNoField widget.
  TextEditingController? mobileNoFieldController;
  final mobileNoFieldMask = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)? mobileNoFieldControllerValidator;
  DateTime? datePicked;
  // State field(s) for PAN_Field widget.
  TextEditingController? pANFieldController;
  final pANFieldMask = MaskTextInputFormatter(mask: 'AAAAA####A');
  String? Function(BuildContext, String?)? pANFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    mobileNoFieldController?.dispose();
    pANFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
