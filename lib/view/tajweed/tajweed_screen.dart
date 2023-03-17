import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/components/custom_container.dart';
import 'package:quran_app/core/components/default_text.dart';
import 'package:quran_app/view/tajweed/widgets/custom_nav_bar.dart';
import 'package:quran_app/view/tajweed/widgets/tajweed_item.dart';

import '../../core/styles/colors.dart';
import '../../data/models/surah_model.dart';

class TajweedScreen extends StatelessWidget {
  final String surahName;
  final AyatModel ayatModel;
  const TajweedScreen(
      {Key? key, required this.ayatModel, required this.surahName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              CustomContainer(
                  child: Material(
                color: Colors.transparent,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: AppColors.primary,
                        )),
                    const Text('المكتبة'),
                    const Spacer(),
                    TextButton(
                      child: const Text('تحرير'),
                      onPressed: () {},
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 15.h,
              ),
              DefaultText(
                ayatModel.ayatText,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DefaultText(
                      'اخكام التجويد في الاية',
                      fontSize: 14.sp,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
              TajweedItem(ayatModel: ayatModel),
            ],
          ),
          bottomNavigationBar: CustomNavBar(
            ayatModel: ayatModel,
            surahName: surahName,
          )
        ),
      ),
    );
  }
}
