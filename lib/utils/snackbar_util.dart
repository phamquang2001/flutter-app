import 'package:flutter/material.dart';

class SnackbarUtil {
  SnackbarUtil._();

  static void showSuccess(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("Successfully!"),
      backgroundColor: Colors.green,
      showCloseIcon: true,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showError(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("Failed!"),
      backgroundColor: Colors.red,
      showCloseIcon: true,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
