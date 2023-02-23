import '../components/address_component_copy_widget.dart';
import '../components/customer_id_log_in_component_widget.dart';
import '../components/error_pop_up_widget.dart';
import '../components/mobile_log_in_component_widget.dart';
import '../components/otp_component_widget.dart';
import '../components/personal_info_component_widget.dart';
import '../components/review_component_widget.dart';
import '../components/select_existing_customer_component_widget.dart';
import '../components/select_phone_or_customer_id_log_in_component_widget.dart';
import '../components/trancation_e_m_i_component_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).axisMarronColor,
                ),
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Banking Portal',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 22,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    if (FFAppState().currentState == 'currentState')
                      wrapWithModel(
                        model: _model.selectExistingCustomerComponentModel,
                        updateCallback: () => setState(() {}),
                        child: SelectExistingCustomerComponentWidget(),
                      ),
                    if (FFAppState().currentState ==
                        FFAppState().existingCustomer)
                      wrapWithModel(
                        model:
                            _model.selectPhoneOrCustomerIdLogInComponentModel,
                        updateCallback: () => setState(() {}),
                        child: SelectPhoneOrCustomerIdLogInComponentWidget(),
                      ),
                    if (FFAppState().currentState == FFAppState().phoneLogIn)
                      wrapWithModel(
                        model: _model.mobileLogInComponentModel,
                        updateCallback: () => setState(() {}),
                        child: MobileLogInComponentWidget(),
                      ),
                    if (FFAppState().currentState ==
                        FFAppState().customerIdLogIn)
                      wrapWithModel(
                        model: _model.customerIdLogInComponentModel,
                        updateCallback: () => setState(() {}),
                        child: CustomerIdLogInComponentWidget(),
                      ),
                    if (FFAppState().currentState ==
                        FFAppState().otpVerification)
                      wrapWithModel(
                        model: _model.otpComponentModel,
                        updateCallback: () => setState(() {}),
                        child: OtpComponentWidget(),
                      ),
                    if ((FFAppState().currentState ==
                            FFAppState().phoneNumberError) ||
                        (FFAppState().currentState ==
                            FFAppState().panOrDobError))
                      wrapWithModel(
                        model: _model.errorPopUpModel,
                        updateCallback: () => setState(() {}),
                        child: ErrorPopUpWidget(),
                      ),
                    if (FFAppState().currentState ==
                        FFAppState().emiTransaction)
                      wrapWithModel(
                        model: _model.trancationEMIComponentModel,
                        updateCallback: () => setState(() {}),
                        child: TrancationEMIComponentWidget(),
                      ),
                    if (FFAppState().currentState ==
                        FFAppState().notExistingCustomer)
                      wrapWithModel(
                        model: _model.personalInfoComponentModel,
                        updateCallback: () => setState(() {}),
                        child: PersonalInfoComponentWidget(),
                      ),
                    if (FFAppState().currentState == FFAppState().address)
                      wrapWithModel(
                        model: _model.addressComponentCopyModel,
                        updateCallback: () => setState(() {}),
                        child: AddressComponentCopyWidget(),
                      ),
                    if (FFAppState().currentState == FFAppState().review)
                      wrapWithModel(
                        model: _model.reviewComponentModel,
                        updateCallback: () => setState(() {}),
                        child: ReviewComponentWidget(
                          firstName: _model.personalInfoComponentModel
                              .firstNameTextFieldController.text,
                          lastName: _model.personalInfoComponentModel
                              .lastNameTextFieldController.text,
                          mobile: _model.personalInfoComponentModel
                              .phoneTextFieldController.text,
                          email: _model.personalInfoComponentModel
                              .emailTextFieldController.text,
                          adharNumber: _model.personalInfoComponentModel
                              .adharTextFieldController.text,
                          panNumber: _model.personalInfoComponentModel
                              .panCardTextFieldController.text,
                          houseNumber: _model.addressComponentCopyModel
                              .houseNoTextFieldController.text,
                          street: _model.addressComponentCopyModel
                              .streetTextFieldController.text,
                          landmark: _model.addressComponentCopyModel
                              .landMarkTextFieldController.text,
                          state: _model
                              .addressComponentCopyModel.stateDropDownValue,
                          city: _model
                              .addressComponentCopyModel.cityDropDownValue,
                          pincode: _model.addressComponentCopyModel
                              .pinCodeTextFieldController.text,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
