import '../components/address_component_copy_widget.dart';
import '../components/address_info2by2_component_widget.dart';
import '../components/common_email_form_component_widget.dart';
import '../components/common_first_name_form_component_widget.dart';
import '../components/common_last_name_form_component_widget.dart';
import '../components/common_mobile_form_component_widget.dart';
import '../components/customer_id_log_in_component_widget.dart';
import '../components/error_pop_up_widget.dart';
import '../components/mobile_log_in_component_widget.dart';
import '../components/otp_component_widget.dart';
import '../components/personal_info2by2_component_widget.dart';
import '../components/personal_info_component_widget.dart';
import '../components/review_component_widget.dart';
import '../components/select_existing_customer_component_widget.dart';
import '../components/select_phone_or_customer_id_log_in_component_widget.dart';
import '../components/trancation_e_m_i_component_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for selectExistingCustomerComponent component.
  late SelectExistingCustomerComponentModel
      selectExistingCustomerComponentModel;
  // Model for selectPhoneOrCustomerIdLogInComponent component.
  late SelectPhoneOrCustomerIdLogInComponentModel
      selectPhoneOrCustomerIdLogInComponentModel;
  // Model for mobileLogInComponent component.
  late MobileLogInComponentModel mobileLogInComponentModel;
  // Model for customerIdLogInComponent component.
  late CustomerIdLogInComponentModel customerIdLogInComponentModel;
  // Model for otpComponent component.
  late OtpComponentModel otpComponentModel;
  // Model for errorPopUp component.
  late ErrorPopUpModel errorPopUpModel;
  // Model for trancationEMIComponent component.
  late TrancationEMIComponentModel trancationEMIComponentModel;
  // Model for personalInfoComponent component.
  late PersonalInfoComponentModel personalInfoComponentModel;
  // Model for addressComponentCopy component.
  late AddressComponentCopyModel addressComponentCopyModel;
  // Model for reviewComponent component.
  late ReviewComponentModel reviewComponentModel;
  // Model for commonFirstNameFormComponent component.
  late CommonFirstNameFormComponentModel commonFirstNameFormComponentModel;
  // Model for commonLastNameFormComponent component.
  late CommonLastNameFormComponentModel commonLastNameFormComponentModel;
  // Model for commonEmailFormComponent component.
  late CommonEmailFormComponentModel commonEmailFormComponentModel;
  // Model for commonMobileFormComponent component.
  late CommonMobileFormComponentModel commonMobileFormComponentModel;
  // Model for personalInfo2by2Component component.
  late PersonalInfo2by2ComponentModel personalInfo2by2ComponentModel;
  // Model for addressInfo2by2Component component.
  late AddressInfo2by2ComponentModel addressInfo2by2ComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    selectExistingCustomerComponentModel =
        createModel(context, () => SelectExistingCustomerComponentModel());
    selectPhoneOrCustomerIdLogInComponentModel = createModel(
        context, () => SelectPhoneOrCustomerIdLogInComponentModel());
    mobileLogInComponentModel =
        createModel(context, () => MobileLogInComponentModel());
    customerIdLogInComponentModel =
        createModel(context, () => CustomerIdLogInComponentModel());
    otpComponentModel = createModel(context, () => OtpComponentModel());
    errorPopUpModel = createModel(context, () => ErrorPopUpModel());
    trancationEMIComponentModel =
        createModel(context, () => TrancationEMIComponentModel());
    personalInfoComponentModel =
        createModel(context, () => PersonalInfoComponentModel());
    addressComponentCopyModel =
        createModel(context, () => AddressComponentCopyModel());
    reviewComponentModel = createModel(context, () => ReviewComponentModel());
    commonFirstNameFormComponentModel =
        createModel(context, () => CommonFirstNameFormComponentModel());
    commonLastNameFormComponentModel =
        createModel(context, () => CommonLastNameFormComponentModel());
    commonEmailFormComponentModel =
        createModel(context, () => CommonEmailFormComponentModel());
    commonMobileFormComponentModel =
        createModel(context, () => CommonMobileFormComponentModel());
    personalInfo2by2ComponentModel =
        createModel(context, () => PersonalInfo2by2ComponentModel());
    addressInfo2by2ComponentModel =
        createModel(context, () => AddressInfo2by2ComponentModel());
  }

  void dispose() {
    selectExistingCustomerComponentModel.dispose();
    selectPhoneOrCustomerIdLogInComponentModel.dispose();
    mobileLogInComponentModel.dispose();
    customerIdLogInComponentModel.dispose();
    otpComponentModel.dispose();
    errorPopUpModel.dispose();
    trancationEMIComponentModel.dispose();
    personalInfoComponentModel.dispose();
    addressComponentCopyModel.dispose();
    reviewComponentModel.dispose();
    commonFirstNameFormComponentModel.dispose();
    commonLastNameFormComponentModel.dispose();
    commonEmailFormComponentModel.dispose();
    commonMobileFormComponentModel.dispose();
    personalInfo2by2ComponentModel.dispose();
    addressInfo2by2ComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}
