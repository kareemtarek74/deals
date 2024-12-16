import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_view_body.dart';
import 'package:flutter/material.dart';

class DealsView extends StatelessWidget {
  const DealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: DealsViewBody()),
    );
  }
}
