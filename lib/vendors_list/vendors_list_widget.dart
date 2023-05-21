import '/utilities/theme.dart';
import '/utilities/util.dart';
import '/utilities/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendors_list_model.dart';
export 'vendors_list_model.dart';

class VendorsListWidget extends StatefulWidget {
  const VendorsListWidget({Key? key}) : super(key: key);

  @override
  _VendorsListWidgetState createState() => _VendorsListWidgetState();
}

class _VendorsListWidgetState extends State<VendorsListWidget> {
  late VendorsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorsListModel());
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xFF39B046),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10, 0.0, 0.0),
                child: Text(
                  'Here\'s Your List Of Vendors!',
                  softWrap: true,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 29.5,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
          Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Text(
                'Choose the vendor you\'d like to purchase the crop from!',
                softWrap: true,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
          )
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 40.0, 0.0, 0.0),
                          child: Text(
                            'Vendors ',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 50.0, 0.0, 0.0),
                        child: Text(
                          'Selected',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF101213),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.green,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image(image: AssetImage('assets/images/f9dhs_4.jpg')),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Color(0xFF57636C),
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValue1 ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .checkboxListTileValue1 = newValue!);
                                    },
                                    title: Text(
                                      'Rakesh Chandan',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Vellore, Crop: Maize\nPrice: 2500 Rs/Quintile',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    tileColor: Colors.white,
                                    activeColor: Color(0xFF4B39EF),
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.green,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image(image: AssetImage('assets/images/a29hc_2.jpg')),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Color(0xFF57636C),
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValue2 ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .checkboxListTileValue2 = newValue!);
                                    },
                                    title: Text(
                                      'Chandrashekhar Rao',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Vellore, Crop: Maize\nPrice: 3000 Rs/Quintile',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    tileColor: Colors.white,
                                    activeColor: Color(0xFF4B39EF),
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.green,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image(image: AssetImage('assets/images/iapkm_3.jpg')),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Color(0xFF57636C),
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValue3 ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .checkboxListTileValue3 = newValue!);
                                    },
                                    title: Text(
                                      'Ajay Azad',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Vellore, Crop: Maize\nPrice: 1800 Rs/Quintile',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    tileColor: Colors.white,
                                    activeColor: Color(0xFF4B39EF),
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.green,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image(image: AssetImage('assets/images/a29hc_2.jpg')),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Color(0xFF57636C),
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValue4 ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .checkboxListTileValue4 = newValue!);
                                    },
                                    title: Text(
                                      'Presh Talwalkar',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Vellore, Crop: Maize\nPrice: 2600 Rs/Quintile',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    tileColor: Colors.white,
                                    activeColor: Color(0xFF4B39EF),
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.green,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image(image: AssetImage('assets/images/f9dhs_4.jpg')),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Color(0xFF57636C),
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValue5 ??=
                                        false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .checkboxListTileValue5 = newValue!);
                                    },
                                    title: Text(
                                      'Rounak Thakur',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Vellore, Crop: Maize\nPrice: 3200 Rs/Quintile',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    tileColor: Colors.white,
                                    activeColor: Color(0xFF4B39EF),
                                    checkColor: Colors.white,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
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
                Align(
                  alignment: AlignmentDirectional(0.0, 0.4),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Send Requests To Vendors',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF39B046),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: double.infinity,
                height: 140.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x001D2429), Colors.white],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
