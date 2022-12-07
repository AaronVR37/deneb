import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Planetas');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF003662),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 90, 0, 0),
                    child: Text(
                      'Deneb',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 40,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.9dA_v_4YmwPGKyI8hDMbBgHaHa?pid=ImgDet&rs=1',
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Planetas');
                  },
                  text: 'Planets',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF0E96D3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Estrellas');
                  },
                  text: 'Stars',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF0E96D3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('PlanetasCopy');
                  },
                  text: 'Black Holes',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF0E96D3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Traveltimecounter');
                  },
                  text: 'Distance',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF0E96D3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
