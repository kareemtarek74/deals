import 'package:deals_page/core/utils/app_images.dart';
import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SavedDeails extends StatelessWidget {
  const SavedDeails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF000080)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 11.09, top: 11.25, bottom: 11.25),
                child: SvgPicture.asset(Assets.imagesSavedIcon),
              ),
              const SizedBox(
                width: 11,
              ),
              Text('المفضلة',
                  textAlign: TextAlign.center,
                  style: Styles.styleRegular16(context)
                      .copyWith(color: const Color(0xff000080))),
              const SizedBox(
                width: 13.5,
              )
            ],
          ),
        ),
      ],
    );
  }
}
