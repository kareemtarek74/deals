import 'package:deals_page/Features/Deals/presentation/view/bocket_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/deals_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/home_view.dart';
import 'package:deals_page/Features/Deals/presentation/view/user_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        DealsView(),
        BocketView(),
        UserView(),
        UserView()
      ],
    );
  }
}
