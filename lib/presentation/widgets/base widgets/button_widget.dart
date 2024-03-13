// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../../../util/size_utils.dart';
import '../../../util/constants.dart';

class BaseButton extends StatelessWidget {
  BaseButton({
    super.key,
    this.icon,
    this.label,
    this.color,
    this.isRed = false,
    required this.onpressed,
  });

  String? label;
  IconData? icon;
  final bool isRed;
  final Color? color;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return icon == null
        ? normalButtonWidget()
        : icon != null && label == null
            ? iconButtonWidget(context)
            : iconWithTextButtonWidget();
  }

  Widget normalButtonWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onpressed,
          child: Text(
            label ?? "",
            style: TextStyle(
              color: isRed ? kRedText : color ?? kWhiteText,
            ),
          ),
        ),
      ),
    );
  }

  Widget iconWithTextButtonWidget() {
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
            label ?? "",
            style: TextStyle(
              color: isRed == true ? kRedText : null,
            ),
          ),
          onPressed: onpressed,
        ),
      ),
    );
  }

  Widget iconButtonWidget(context) {
    return Center(
      child: Container(
        width: SizesUtils.screenWidth(context, .4),
        height: SizesUtils.screenHeight(context, .07),
        margin: SizesUtils.defualtPaddingOrMargin(context),
        child: IconButton.filled(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: isRed ? kRedText : null,
          ),
        ),
      ),
    );
  }
}
