import 'package:deals_page/core/utils/app_images.dart';
import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF000080)),
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000080),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x0F000080),
            blurRadius: 2,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: 4, right: 14, top: 14, bottom: 14),
              child: SvgPicture.asset(
                Assets.imagesSearchIcon,
                height: 12,
                width: 12,
              ),
            ),
            hintText: 'إبحث عن صفقات',
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintStyle: Styles.styleRegular14(context)
                .copyWith(color: const Color(0xffA0AEC0))),
      ),
    );
  }
}
