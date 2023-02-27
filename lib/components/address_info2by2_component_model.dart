import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddressInfo2by2ComponentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  Color? firstNameColor = Colors.white;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for houseStreetTextField widget.
  TextEditingController? houseStreetTextFieldController;
  String? Function(BuildContext, String?)?
      houseStreetTextFieldControllerValidator;
  String? _houseStreetTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'House number and street are reuiqred';
    }

    if (val.length < 10) {
      return 'enter a valid address';
    }

    return null;
  }

  // State field(s) for stateDropDown widget.
  String? stateDropDownValue;
  // Stores action output result for [Custom Action - getCityValues] action in stateDropDown widget.
  List<String>? listOfCities;
  // State field(s) for cityDropDown widget.
  String? cityDropDownValue;
  // State field(s) for pincodeTextField widget.
  TextEditingController? pincodeTextFieldController;
  final pincodeTextFieldMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? pincodeTextFieldControllerValidator;
  String? _pincodeTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pincode is required';
    }

    if (val.length < 6) {
      return 'enter pincode is less than 6 digits';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    houseStreetTextFieldControllerValidator =
        _houseStreetTextFieldControllerValidator;
    pincodeTextFieldControllerValidator = _pincodeTextFieldControllerValidator;
  }

  void dispose() {
    houseStreetTextFieldController?.dispose();
    pincodeTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
