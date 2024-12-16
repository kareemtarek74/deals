import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DealsNumber extends StatelessWidget {
  const DealsNumber({
    super.key,
    required this.num,
    required this.text,
  });
  final String num;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: num,
              style: Styles.styleBold24(context).copyWith(color: Colors.white)),
          TextSpan(
              text: text,
              style: Styles.styleRegular16(context)
                  .copyWith(height: 0.8, color: Colors.white)),
        ],
      ),
    );
  }
}
