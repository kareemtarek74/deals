import 'package:deals_page/Features/Deals/presentation/view/widgets/custom_search_field.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_header.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_list_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/filter_list_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/page_top_stack.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealsViewBody extends StatelessWidget {
  const DealsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomScrollView(
          clipBehavior: Clip.none,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  PageTopStack(),
                  SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: FilterListView(
                      filters: ["صفقات جارية", 'صفقات منتظرة', 'صفقات مكتملة'],
                      horizontalPadding: 16,
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SearchField(),
                        SizedBox(height: 24),
                        DealsHeader(),
                        SizedBox(height: 10),
                        DealsListView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton.small(
              shape: const CircleBorder(),
              onPressed: () {},
              backgroundColor: const Color(0xff000080),
              child: SvgPicture.asset(Assets.imagesArrowUp)),
        ),
      ],
    );
  }
}
