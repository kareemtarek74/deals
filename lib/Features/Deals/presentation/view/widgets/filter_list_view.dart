import 'package:deals_page/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FilterListView extends StatefulWidget {
  const FilterListView(
      {super.key, required this.filters, required this.horizontalPadding});
  final List<String> filters;
  final double horizontalPadding;

  @override
  FilterListViewState createState() => FilterListViewState();
}

class FilterListViewState extends State<FilterListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .090,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.filters.length,
        itemBuilder: (context, index) {
          bool isActive = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              clipBehavior: Clip.none,
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              padding: EdgeInsets.symmetric(
                  horizontal: widget.horizontalPadding, vertical: 18.5),
              decoration: BoxDecoration(
                boxShadow: isActive
                    ? null
                    : const [
                        BoxShadow(
                          color: Color(0x0F000080),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x0F000080),
                          blurRadius: 2,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                color: isActive ? const Color(0xFFF1F4FF) : Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  width: 1,
                  color: isActive
                      ? const Color(0xFF1007FA)
                      : const Color(0xffE5E8FF),
                ),
              ),
              child: Text(widget.filters[index],
                  style: isActive
                      ? Styles.styleBold16(context)
                          .copyWith(color: const Color(0xFF1007FA))
                      : Styles.styleRegular16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500)),
            ),
          );
        },
      ),
    );
  }
}
