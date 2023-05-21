import '/utilities/google_map.dart';
import '/utilities/place_picker.dart';
import '/utilities/theme.dart';
import '/utilities/util.dart';
import '/utilities/widgets.dart';
import '/utilities/place.dart';
import '/vendors_list/vendors_list_widget.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_location_page_model.dart';
export 'select_location_page_model.dart';

class SelectDestinationPageWidget extends StatefulWidget {
  const SelectDestinationPageWidget({Key? key}) : super(key: key);

  @override
  _SelectDestinationPageWidgetState createState() =>
      _SelectDestinationPageWidgetState();
}

class _SelectDestinationPageWidgetState
    extends State<SelectDestinationPageWidget> {
  late SelectDestinationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDestinationPageModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF69B039),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 8.0),
          child: FlutterFlowPlacePicker(
            iOSGoogleMapsApiKey: 'AIzaSyCV3HaLkTEa66rVXTk9QjGSntzZU-pOKrA',
            androidGoogleMapsApiKey: 'AIzaSyCV3HaLkTEa66rVXTk9QjGSntzZU-pOKrA',
            webGoogleMapsApiKey: 'AIzaSyCV3HaLkTEa66rVXTk9QjGSntzZU-pOKrA',
            onSelect: (place) async {
              setState(() => _model.placePickerValue = place);
            },
            defaultText: 'Select Your Location',
            icon: Icon(
              Icons.place,
              color: Colors.white,
              size: 15.0,
            ),
            buttonOptions: FFButtonOptions(
              width: double.infinity,
              height: 50.0,
              color: Colors.transparent,
              textStyle: FlutterFlowTheme.of(context).headlineMedium,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 1.0),
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: Builder(builder: (context) {
                  final _googleMapMarker = currentUserLocationValue;
                  return FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) =>
                        setState(() => _model.googleMapsCenter = latLng),
                    initialLocation: _model.googleMapsCenter ??=
                        currentUserLocationValue!,
                    markers: [
                      if (_googleMapMarker != null)
                        FlutterFlowMarker(
                          _googleMapMarker.serialize(),
                          _googleMapMarker,
                        ),
                    ],
                    markerColor: GoogleMarkerColor.blue,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 2.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: true,
                    showMapToolbar: true,
                    showTraffic: true,
                    centerMapOnMarkerTap: true,
                  );
                }),
              ),
            ),
            if (_model.placePickerValue.address != null &&
                _model.placePickerValue.address != '')
              Container(
                width: double.infinity,
                height: 275.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x95D0FFC4), Color(0xFFF5F5F5)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.9, -0.05),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Text(
                                    '🔭 Vellore, Tamil Nadu, India',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 15.0,
                        thickness: 4.0,
                        color: Color(0xFFC7C7C7),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '📈 "Maize" is recommended for Vellore',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VendorsListWidget(),
                              ),
                            );
                          },
                          text: 'Proceed To Select Crop Vendor',
                          options: FFButtonOptions(
                            width: double.infinity,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF69B039),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
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
    );
  }
}
