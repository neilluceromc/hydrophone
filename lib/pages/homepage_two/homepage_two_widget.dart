import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage_two_model.dart';
export 'homepage_two_model.dart';

class HomepageTwoWidget extends StatefulWidget {
  const HomepageTwoWidget({Key? key}) : super(key: key);

  @override
  _HomepageTwoWidgetState createState() => _HomepageTwoWidgetState();
}

class _HomepageTwoWidgetState extends State<HomepageTwoWidget> {
  late HomepageTwoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageTwoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF8DEB5),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/homepage2.svg',
                    width: 427.0,
                    height: 496.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Maintain your plant easily',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Blinker',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                  child: Text(
                    'Nothing can keep you from checking your plants. Stay Connected using our app!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Blinker',
                          fontSize: 19.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'Login',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                        ),
                      },
                    );
                  },
                  text: 'Start',
                  options: FFButtonOptions(
                    width: 268.0,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF668B54),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Blinker',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/rockbottom.png',
                    width: 426.0,
                    height: 200.0,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.00, 0.00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
