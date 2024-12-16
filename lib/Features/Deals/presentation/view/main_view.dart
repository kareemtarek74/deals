import 'package:deals_page/Features/Deals/presentation/view/widgets/custom_buttom_nav_bar.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: (index) {
            currentViewIndex = index;

            setState(() {});
          },
        ),
        body: SafeArea(
          child: MainViewBody(currentViewIndex: currentViewIndex),
        ));
  }
}
