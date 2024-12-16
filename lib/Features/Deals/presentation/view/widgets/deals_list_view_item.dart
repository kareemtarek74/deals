import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_item_body.dart';
import 'package:flutter/material.dart';

class DealsListViewItem extends StatelessWidget {
  const DealsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
        child: const DealsItemBody());
  }
}
