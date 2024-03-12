import 'package:flutter/widgets.dart';

class SizesUtils {
  final BuildContext context;

  SizesUtils(this.context);

  static EdgeInsetsGeometry getDropDownHorizontalPadding(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width * 0.02;
    return EdgeInsets.symmetric(horizontal: paddingValue);
  }

  static EdgeInsetsGeometry getDropDownOnlyLeftPadding(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width * 0.02;
    return EdgeInsets.only(left: paddingValue);
  }

  static EdgeInsetsGeometry defualtPadding(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width * 0.035;
    return EdgeInsets.symmetric(horizontal: paddingValue, vertical: 5);
  }

  static EdgeInsetsGeometry getDropDownHorizontalMargin(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width * 0.01;
    return EdgeInsets.symmetric(horizontal: paddingValue);
  }

  static EdgeInsetsGeometry getDropDownHorizontalCustomMargin(
      BuildContext context, num size) {
    final double paddingValue = MediaQuery.of(context).size.width * size;
    return EdgeInsets.symmetric(horizontal: paddingValue);
  }

  static double screenWidth(BuildContext context, double width) {
    return MediaQuery.of(context).size.width * width;
  }

  static double screenHeight(BuildContext context, double height) {
    return MediaQuery.of(context).size.height * height;
  }

  static EdgeInsetsGeometry getVerticalMargin(BuildContext context, num size) {
    final double marginValue = MediaQuery.of(context).size.width * size;
    return EdgeInsets.symmetric(vertical: marginValue);
  }
}
