import 'package:deals_page/Features/Deals/domain/Entities/buttom_vavigation_bar_entity.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/active_item.dart';
import 'package:deals_page/Features/Deals/presentation/view/widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
