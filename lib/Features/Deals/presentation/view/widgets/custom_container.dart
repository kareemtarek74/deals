import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.imageWidget,
    required this.textWidget,
  });
  final Widget imageWidget;
  final Widget textWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
            imageWidget,
            const SizedBox(
              width: 8,
            ),
            textWidget,
          ],
        ));
  }
}
