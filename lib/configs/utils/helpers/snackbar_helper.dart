import 'package:flutter/material.dart';

import '../../../util/constants.dart';

class SnackbarHelper {
  static void showSnackbar(BuildContext context, String message,
      {bool isError = false}) {
    final backgroundColor = isError ? Colors.red : Colors.green;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: kWhiteText)),
        backgroundColor: backgroundColor,
      ),
    );
  }

  static void showSnackbarWithContent(BuildContext context, Widget content,
      {bool isError = false}) {
    final backgroundColor = isError ? Colors.red : Colors.green;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
