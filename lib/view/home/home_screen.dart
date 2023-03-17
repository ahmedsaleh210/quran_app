import 'package:flutter/material.dart';
import 'package:quran_app/view/home/widgets/ayat_item.dart';
import 'package:quran_app/view/home/widgets/search_textfield.dart';
import 'package:quran_app/view/home/widgets/surah_item.dart';

import '../../data/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
              body: CustomScrollView(
                physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverPersistentHeader(
            delegate: SearchHeaderDelegate(SearchTextField()),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SurahItem(
                  surahModel: dummyData[index],
                );
              },
              childCount: dummyData.length,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return AyatItem(
                surahModel: dummyData[index],
              );
            },
            childCount: dummyData.length,
          ))
        ],
      ))),
    );
  }
}
