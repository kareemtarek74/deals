import 'package:deals_page/Features/Deals/presentation/view/widgets/custom_container.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/custom_detail_button.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_item_details.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealsItemBody extends StatelessWidget {
  const DealsItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          const Image(
            image: AssetImage(Assets.imagesBag),
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            bottom: -20,
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                CustomContainer(
                  textWidget: Text(
                    '5',
                    style: Styles.styleRegular16(context)
                        .copyWith(color: const Color(0xff06A6F1)),
                  ),
                  imageWidget: SvgPicture.asset(Assets.imagesPersons),
                ),
                const SizedBox(
                  width: 16,
                ),
                CustomContainer(
                  imageWidget: SvgPicture.asset(Assets.imagesTimer),
                  textWidget: Text(
                    '4 يوم',
                    style: Styles.styleRegular16(context)
                        .copyWith(color: const Color(0xffE53E3E)),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(bottom: -20, left: 16, child: CustomDetailButton())
        ],
      ),
      const SizedBox(
        height: 38.69,
      ),
      const DealsItemDetails(),
    ]);
  }
}
