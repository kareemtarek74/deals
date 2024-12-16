import 'package:deals_page/Features/Deals/presentation/view/widgets/deals_list_view_item.dart';
import 'package:flutter/material.dart';

class DealsListView extends StatelessWidget {
  const DealsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.builder(
          itemCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: DealsListViewItem(),
            );
          }),
    );
  }
}
