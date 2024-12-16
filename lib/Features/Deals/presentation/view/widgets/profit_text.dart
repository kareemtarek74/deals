import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ProfitText extends StatelessWidget {
  const ProfitText({
    super.key,
    required this.textColor,
    required this.num,
    required this.text,
  });
  final Color textColor;
  final String num;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: num,
            style: Styles.styleBold16(context).copyWith(
              color: textColor,
              height: 0.07,
              letterSpacing: -0.50,
            ),
          ),
          TextSpan(
              text: 'ج.م',
              style: Styles.styleRegular14(context).copyWith(
                color: textColor,
                height: 0.09,
              )),
          TextSpan(
              text: text,
              style: Styles.styleBold16(context).copyWith(
                color: textColor,
                height: 0.07,
                letterSpacing: -0.50,
              )),
        ],
      ),
      textAlign: TextAlign.right,
    );
  }
}
