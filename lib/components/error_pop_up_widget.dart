import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'error_pop_up_model.dart';
export 'error_pop_up_model.dart';

class ErrorPopUpWidget extends StatefulWidget {
  const ErrorPopUpWidget({Key? key}) : super(key: key);

  @override
  _ErrorPopUpWidgetState createState() => _ErrorPopUpWidgetState();
}

class _ErrorPopUpWidgetState extends State<ErrorPopUpWidget> {
  late ErrorPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorPopUpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x7F101213),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
            child: Container(
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).axisMarronColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'Info',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 22,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        _model.updatePage(() {
                          FFAppState().currentState = FFAppState().phoneLogIn;
                        });
                      },
                      child: Icon(
                        Icons.clear_outlined,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
            child: Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Text(
                  FFAppState().currentState == FFAppState().phoneNumberError
                      ? 'Mobile Number is empty'
                      : 'Please enter Pan Number or DOB',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
