import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/custom_container.dart';
import '../../../core/components/default_text.dart';
import '../../../data/models/surah_model.dart';

class SurahItem extends StatelessWidget {
  final SurahModel surahModel;
  const SurahItem({Key? key,required this.surahModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: DefaultText(
                  surahModel.surahName,
                ),
              ),
              DefaultText('${surahModel.counter}'),
            ],
          ),
        ));
  }
}
