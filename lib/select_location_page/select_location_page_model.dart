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

class SelectDestinationPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
