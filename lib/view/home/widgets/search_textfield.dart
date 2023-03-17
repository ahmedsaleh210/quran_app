import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/colors.dart';

class SearchHeaderDelegate extends SliverPersistentHeaderDelegate {
  final SearchTextField searchTextField;

  const SearchHeaderDelegate(this.searchTextField);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return searchTextField;
  }

  @override
  double get maxExtent => 56.0.h;

  @override
  double get minExtent => 56.0.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}


class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  bool isEmpty = true;

  void onChanged(String value) {
    if (value.isNotEmpty) {
      setState(() {});
      isEmpty = false;
      return;
    }
    isEmpty = true;
    setState(() {});
  }

  void clearSearch() {
    searchController.clear();
    isEmpty = true;
    focusNode.unfocus();
    setState(() {});
  }

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  bool get isFocused => focusNode.hasFocus;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFBF2),
      child: Material(
        color: Colors.transparent,
        child: TextFormField(
          onChanged: (value) {
            onChanged(value);
          },
          controller: searchController,
          style: TextStyle(
            fontSize: 16.sp,
          ),
          focusNode: focusNode,
          cursorHeight: 17.h,
          decoration: InputDecoration(
            suffixIcon: isFocused && !isEmpty
                ? IconButton(
                    onPressed: () {
                      clearSearch();
                    },
                    icon: Icon(
                      Icons.close,
                      color: AppColors.primary,
                      size: 25.sp,
                    ),
                  )
                : null,
            hintText: 'البحث',
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 8.0.h),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.primary,
              size: 25.sp,
            ),
          ),
        ),
      ),
    );
  }
}


