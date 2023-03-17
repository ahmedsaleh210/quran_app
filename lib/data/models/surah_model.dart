class SurahModel {
  final int counter;
  final String surahName;
  final List<AyatModel> ayatList;

  SurahModel(
      {required this.counter, required this.surahName, required this.ayatList});
}

class AyatModel {
  final int ayatNumber;
  final int pageNumber;
  final String ayatText;
  final List<TajweedModel> tajweedList;

  AyatModel(
      {required this.ayatNumber,
      required this.ayatText,
      required this.pageNumber,
      required this.tajweedList});
}

class TajweedModel {
  final String title;
  final String content;

  TajweedModel({required this.title, required this.content});
}