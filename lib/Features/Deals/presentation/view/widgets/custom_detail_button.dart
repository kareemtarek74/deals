import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class CustomDetailButton extends StatelessWidget {
  const CustomDetailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(9),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.99, -0.16),
            end: Alignment(-0.99, 0.16),
            colors: [
              Color(0xFF006AA7),
              Color(0xFF0084CE),
            ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x0A000080),
              blurRadius: 8,
              offset: Offset(0, 6),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0A000080),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Text(
              'تفاصيل',
              style:
                  Styles.styleRegular16(context).copyWith(color: Colors.white),
            ),
            const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            )
          ],
        ));
  }
}
