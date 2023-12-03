import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'garden_model.dart';
export 'garden_model.dart';

class GardenWidget extends StatefulWidget {
  const GardenWidget({Key? key}) : super(key: key);

  @override
  _GardenWidgetState createState() => _GardenWidgetState();
}

class _GardenWidgetState extends State<GardenWidget> {
  late GardenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GardenModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFFF8DEB5),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.00, 1.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
              child: Text(
                'HYDROPHONE',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Blinker',
                      color: Color(0xFF668B54),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Container(
                  width: 235.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8DEB5),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Text(
                      'ADD PLANT',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Blinker',
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.00, -0.28),
                child: Container(
                  width: 168.0,
                  height: 256.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8DEB5),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 4.00),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/soil.svg',
                        width: 346.0,
                        height: 236.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.00, -0.28),
                child: Container(
                  width: 413.0,
                  height: 727.0,
                  decoration: BoxDecoration(
                    color: Color(0x00F8DEB5),
                  ),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-3.29, -1.09),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/hand.png',
                                width: 300.0,
                                height: 262.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-4.73, -0.27),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/seeds.png',
                                width: 300.0,
                                height: 290.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(-1.00, 0.00),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(4.00, 0.00),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/bottle.png',
                                width: 300.0,
                                height: 700.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.50),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Text(
                                'Add a lettuce seed in your substrate. Watch them grow, add nutrients, remove potential pest, simulate a day to make them grow!',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Blinker',
                                      fontSize: 17.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.70),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'ADD A LETTUCE SEED',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF668B54),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(19.0),
                          ),
                        ),
                      ),
                    ],
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
