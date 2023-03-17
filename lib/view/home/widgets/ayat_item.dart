import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/core/components//custom_container.dart';
import 'package:quran_app/core/components/default_text.dart';

import '../../../data/models/surah_model.dart';
import '../../tajweed/tajweed_screen.dart';

class AyatItem extends StatelessWidget {
  final SurahModel surahModel;
  const AyatItem({Key? key, required this.surahModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Text('الأيات: ${surahModel.ayatList.length}',
              style: GoogleFonts.abel(fontSize: 14.sp)),
        ),
        CustomContainer(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(children: [
          ...List.generate(
                surahModel.ayatList.length,
                (index) => Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TajweedScreen(
                                ayatModel: surahModel.ayatList[index],
                                surahName: surahModel.surahName,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        DefaultText(
                                          '${surahModel.surahName}:',
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        DefaultText(
                                          '${surahModel.ayatList[index].ayatNumber}',
                                        ),
                                      ],
                                    ),
                                  ),
                                  DefaultText(
                                    '${surahModel.ayatList[index].pageNumber}',
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: DefaultText(
                                  surahModel.ayatList[index].ayatText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
        ]),
            )),
      ],
    );
  }
}
