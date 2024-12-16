import 'package:deals_page/Features/Deals/presentation/view/deals_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(builder: (context) => const DealsView());
  }
}
