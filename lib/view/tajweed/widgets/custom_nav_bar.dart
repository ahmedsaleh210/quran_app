import 'package:flutter/material.dart';

import '../../../core/components/default_text.dart';
import '../../../core/styles/colors.dart';
import '../../../data/models/surah_model.dart';

class CustomNavBar extends StatelessWidget {
  final String surahName;
  final AyatModel ayatModel;
  const CustomNavBar(
      {Key? key, required this.surahName, required this.ayatModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: AppColors.primary,
          ),
          Expanded(
              child: DefaultText(
            '$surahName: ${ayatModel.ayatNumber}',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
