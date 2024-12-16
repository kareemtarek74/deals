import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DealsHeader extends StatelessWidget {
  const DealsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الصفقات الجارية',
          style: Styles.styleBold16(context),
        ),
        const Spacer(),
        Text(
          '12 صفقة',
          style: Styles.styleRegular16(context)
              .copyWith(color: const Color(0xff718096)),
        )
      ],
    );
  }
}
