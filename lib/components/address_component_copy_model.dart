import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddressComponentCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for HouseNoTextField widget.
  TextEditingController? houseNoTextFieldController;
  String? Function(BuildContext, String?)? houseNoTextFieldControllerValidator;
  String? _houseNoTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for StreetTextField widget.
  TextEditingController? streetTextFieldController;
  String? Function(BuildContext, String?)? streetTextFieldControllerValidator;
  String? _streetTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LandMarkTextField widget.
  TextEditingController? landMarkTextFieldController;
  String? Function(BuildContext, String?)? landMarkTextFieldControllerValidator;
  // State field(s) for stateDropDown widget.
  String? stateDropDownValue;
  // Stores action output result for [Custom Action - getCityValues] action in stateDropDown widget.
  List<String>? listOfCities;
  // State field(s) for cityDropDown widget.
  String? cityDropDownValue;
  // State field(s) for pinCodeTextField widget.
  TextEditingController? pinCodeTextFieldController;
  final pinCodeTextFieldMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? pinCodeTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    houseNoTextFieldControllerValidator = _houseNoTextFieldControllerValidator;
    streetTextFieldControllerValidator = _streetTextFieldControllerValidator;
  }

  void dispose() {
    houseNoTextFieldController?.dispose();
    streetTextFieldController?.dispose();
    landMarkTextFieldController?.dispose();
    pinCodeTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
