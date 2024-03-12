// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../../../util/constants.dart';

class BaseButton extends StatelessWidget {
  BaseButton({
    super.key,
    this.isRed,
    this.icon,
    required this.label,
    required this.onpressed,
  });

  IconData? icon;
  bool? isRed = false;
  final String label;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return icon == null ? normalButtonWidget() : iconButtonWidget();
  }

  Widget iconButtonWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton.icon(
          icon: Icon(
            icon,
            size: 30.0,
            color: isRed == true ? kRedText : null,
          ),
          label: Text(
            label,
            style: TextStyle(
              color: isRed == true ? kRedText : null,
            ),
          ),
          onPressed: onpressed,
        ),
      ),
    );
  }

  Widget normalButtonWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onpressed,
          child: Text(
            label,
            style: const TextStyle(
              color: kWhiteText,
            ),
          ),
        ),
      ),
    );
  }
}
