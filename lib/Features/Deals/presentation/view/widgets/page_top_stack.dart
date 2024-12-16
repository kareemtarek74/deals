import 'package:deals_page/Features/Deals/presentation/view/widgets/saved_details.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'deals_frames.dart';

class PageTopStack extends StatelessWidget {
  const PageTopStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage(Assets.imagesBackGround),
          fit: BoxFit.cover,
          width: double.infinity,
          height: 261,
        ),
        Positioned(
          right: 10,
          top: 16,
          child: Row(
            children: [
              SvgPicture.asset(Assets.imagesBackIcon),
              SvgPicture.asset(Assets.imagesNotificationIcon),
            ],
          ),
        ),
        const Positioned(top: 18, left: 16, child: SavedDeails()),
        const Positioned(
            top: 96, right: 8, child: FittedBox(child: DealsFrames()))
      ],
    );
  }
}
