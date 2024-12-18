import 'package:deals_page/Features/Deals/presentation/view/widgets/custom_search_field.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_header.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_list_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/filter_list_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/page_top_stack.dart';
import 'package:deals_page/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealsViewBody extends StatefulWidget {
  const DealsViewBody({super.key});

  @override
  State<DealsViewBody> createState() => DealsViewBodyState();
}

class DealsViewBodyState extends State<DealsViewBody> {
  final ScrollController scrollController = ScrollController();
  bool showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void scrollListener() {
    if (scrollController.offset > 100) {
      if (!showScrollToTopButton) {
        setState(() {
          showScrollToTopButton = true;
        });
      }
    } else {
      if (showScrollToTopButton) {
        setState(() {
          showScrollToTopButton = false;
        });
      }
    }
  }

  void scrollToTop() {
    scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          controller: scrollController,
          clipBehavior: Clip.none,
          slivers: const [
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
        if (showScrollToTopButton)
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton.small(
              shape: const CircleBorder(),
              onPressed: scrollToTop,
              backgroundColor: const Color(0xff000080),
              child: SvgPicture.asset(Assets.imagesArrowUp),
            ),
          ),
      ],
    );
  }
}
