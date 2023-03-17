import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/custom_container.dart';
import '../../../core/components/default_text.dart';
import '../../../core/styles/colors.dart';
import '../../../data/models/surah_model.dart';

class TajweedItem extends StatelessWidget {
  final AyatModel ayatModel;
  const TajweedItem({Key? key, required this.ayatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: List.generate(ayatModel.tajweedList.length, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h),
          child: Row(
            children: [
              DefaultText(
                '${ayatModel.tajweedList[index].title}:',
                fontSize: 14.sp,
                color: AppColors.primary,
              ),
              SizedBox(
                width: 4.w,
              ),
              DefaultText(
                ayatModel.tajweedList[index].content,
                fontSize: 14.sp,
              ),
            ],
          ),
        );
      })),
    ));
  }
}
