import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_number.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealsFrames extends StatelessWidget {
  const DealsFrames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          SvgPicture.asset(
            Assets.imagesFrame1,
            height: MediaQuery.sizeOf(context).width * .39,
            width: MediaQuery.sizeOf(context).width * .45,
          ),
          Positioned(
              top: 40,
              right: 20,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Assets.imagesStackDealsIcon),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'صفقاتي النشطة',
                        style: Styles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const DealsNumber(
                    num: '10',
                    text: ' صفقات',
                  )
                ],
              ))
        ]),
        Stack(children: [
          SvgPicture.asset(
            Assets.imagesFrame2,
            height: MediaQuery.sizeOf(context).width * .39,
            width: MediaQuery.sizeOf(context).width * .45,
          ),
          Positioned(
              top: 40,
              right: 20,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Assets.imagesFinanceIcons),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'الأرباح المتوقعة',
                        style: Styles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: DealsNumber(
                      num: '30.000',
                      text: ' ج.م',
                    ),
                  )
                ],
              ))
        ])
      ],
    );
  }
}
