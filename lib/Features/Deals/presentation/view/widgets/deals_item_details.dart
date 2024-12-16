import 'package:deals_page/Features/Deals/presentation/view/widgets/profit_text.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealsItemDetails extends StatelessWidget {
  const DealsItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'شنطة سفر ضهر',
              style: Styles.styleRegular16(context)
                  .copyWith(color: const Color(0xff221D05)),
            ),
            const Spacer(),
            Text(
              'شنط وإكسسوارات',
              style: Styles.styleRegular14(context)
                  .copyWith(color: const Color(0xff718096)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesMoney),
            const SizedBox(
              width: 6,
            ),
            Text(
              'قيمة الصفقة: 1000 ج.م',
              style: Styles.styleRegular16(context)
                  .copyWith(color: const Color(0xff718096)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesProfit),
            const SizedBox(
              width: 6,
            ),
            const ProfitText(
              num: '2000 ',
              text: ' ربح متوقع',
              textColor: Color(0xFF38A169),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.imagesOrdersBag),
                const SizedBox(
                  width: 6,
                ),
                const ProfitText(
                  num: '10.000 ',
                  text: ' أرباح محققة',
                  textColor: Color(0xFF3AC1FF),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset(Assets.imagesBagIcon),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '31 طلب ',
                  style: Styles.styleBold14(context)
                      .copyWith(color: const Color(0xff38A169)),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
