import 'package:get/get.dart';
import 'package:meal_app_get_x/utils/1.1%20dummy_data.dart';

import '../widgets/details_meal_page.dart';

class DetailsMealController extends GetxController {
  // RxList<DetailsMealPage> detailsMeal = DUMMY_MEALS
  //     .where((element) => element.id == Get.arguments)
  //     .map((e) => DetailsMealPage(
  //           ingredients: e.ingredients,
  //           steps: e.steps,
  //           img: e.imageUrl,
  //           title: e.title,
  //         ))
  //     .toList()
  //     .obs;
  static List<DetailsMealPage> allMealCard = DUMMY_MEALS
      .map((e) => DetailsMealPage(
            img: e.imageUrl,
            ingredients: e.ingredients,
            steps: e.steps,
            title: e.title,
            id: e.id,
          ))
      .toList();
  Rx<DetailsMealPage> detailsMeal =
      allMealCard.firstWhere((element) => element.id == Get.arguments).obs;
}
