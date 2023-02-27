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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).axisMarronColor,
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Banking Portal',
                    textAlign: TextAlign.center,
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
                    if (false)
                      wrapWithModel(
                        model: _model.personalInfoComponentModel,
                        updateCallback: () => setState(() {}),
                        child: PersonalInfoComponentWidget(),
                      ),
                    if (false)
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
                          firstName: _model.personalInfo2by2ComponentModel
                              .firstNameTextFieldController.text,
                          lastName: _model.personalInfo2by2ComponentModel
                              .lastNameTextFieldController.text,
                          mobile: _model.personalInfo2by2ComponentModel
                              .phoneTextFieldController.text,
                          email: _model.personalInfo2by2ComponentModel
                              .emailTextFieldController.text,
                          state: _model
                              .addressInfo2by2ComponentModel.stateDropDownValue,
                          city: _model
                              .addressInfo2by2ComponentModel.cityDropDownValue,
                          pincode: _model.addressInfo2by2ComponentModel
                              .pincodeTextFieldController.text,
                          houseAndStreet: _model.addressInfo2by2ComponentModel
                              .houseStreetTextFieldController.text,
                        ),
                      ),
                    if (false)
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 30),
                                child: Text(
                                  'Personal Details',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .axisMarronColor,
                                        fontSize: 22,
                                      ),
                                ),
                              ),
                              Wrap(
                                spacing: 50,
                                runSpacing: 0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model
                                        .commonFirstNameFormComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: CommonFirstNameFormComponentWidget(),
                                  ),
                                  wrapWithModel(
                                    model:
                                        _model.commonLastNameFormComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: CommonLastNameFormComponentWidget(),
                                  ),
                                ],
                              ),
                              Wrap(
                                spacing: 50,
                                runSpacing: 0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.commonEmailFormComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: CommonEmailFormComponentWidget(),
                                  ),
                                  wrapWithModel(
                                    model:
                                        _model.commonMobileFormComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: CommonMobileFormComponentWidget(),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            FFAppState().currentState =
                                                'currentState';
                                          });
                                        },
                                        text: 'Back',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .axisMarronColor,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .axisRubyColor,
                                          hoverBorderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .axisRubyColor,
                                            width: 1,
                                          ),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() {
                                            FFAppState().currentState =
                                                FFAppState().address;
                                          });
                                        },
                                        text: 'Next',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .axisMarronColor,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .axisRubyColor,
                                          hoverBorderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .axisRubyColor,
                                            width: 1,
                                          ),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.personalInfo2by2ComponentModel,
                      updateCallback: () => setState(() {}),
                      child: PersonalInfo2by2ComponentWidget(),
                    ),
                    wrapWithModel(
                      model: _model.addressInfo2by2ComponentModel,
                      updateCallback: () => setState(() {}),
                      child: AddressInfo2by2ComponentWidget(),
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
