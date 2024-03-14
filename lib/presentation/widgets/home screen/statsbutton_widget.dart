import 'package:flutter/material.dart';

import '../../../util/constants.dart';
import '../../../util/decoration_utils.dart';
import '../../../util/size_utils.dart';

class StatsButtonWidget extends StatelessWidget {
  const StatsButtonWidget({
    super.key,
    this.ontap,
    this.label = "label",
    this.isIcon = false,
    this.isRed = false,
  });
  final String label;
  final bool isIcon;
  final bool isRed;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizesUtils.getOnlyTopMargin(context, 0.05),
      child: InkWell(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              margin: SizesUtils.defualtPaddingOrMargin(context),
              decoration: BoxDecoration(
                borderRadius: DecoUtils.commonBorderRadius,
                color: kThirdDark,
              ),
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                        color: isRed ? kRedText : null,
                        fontWeight: FontWeight.bold),
                  ),
                  isIcon
                      ? Icon(
                          Icons.location_on,
                          size: 30,
                          color: isRed ? kRedText : null,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
