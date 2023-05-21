import '/auth/auth_util.dart';
import '/create_account_page/create_account_page_widget.dart';
import '/utilities/theme.dart';
import '/utilities/util.dart';
import '/utilities/widgets.dart';
import '../select_location_page/select_location_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for PasswordLogin widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordLoginController?.dispose();
  }

  /// Additional helper methods are added here.

}
