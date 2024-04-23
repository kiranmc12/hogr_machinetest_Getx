import 'package:get/get.dart';

class Page3Controller extends GetxController {
  final RxList<String> items = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {

   final List<String> data = [
      "Samosas.",
      "Chaat.",
      "Pani Puri.",
      "Bhelpuri.",
      "Kachori.",
      "Chole Bhature.",
      "Matar Kulcha.",
      "Dosa.",
      "Milk.",
      "Bread.",
      "Butter.",
      "Cheese.",
      "Yoghurt.",
      "Sandwich.",
      "Pancake.",
      "Pie.",
      "Cake.",
      "Lemon.",
      "Pizza.",
      "Carrots.",
      "Grapes.",
      "Eggs.",
      "Oats.",
      "Pancakes.",
      "Crepes.",
      "Waffles.",
      "Idli."
    ];

    items.assignAll(data);
  }
}
