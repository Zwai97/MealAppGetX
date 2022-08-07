import 'package:get/get.dart';
import 'package:meal_app_get_x/model/meal.dart';
import 'package:meal_app_get_x/utils/1.1%20dummy_data.dart';

import '../widgets/meal_card.dart';

class MealController extends GetxController {
  RxList mealFilter = [].obs;

  getFilteredMealCard() {
    List<Meal> allFilteredMeal = DUMMY_MEALS
        .where((element) => element.categories.contains(Get.arguments['id']))
        .toList();
    mealFilter = allFilteredMeal
        .map((e) => MealCard(
            id: e.id,
            title: e.title,
            imageUrl: e.imageUrl,
            duration: e.duration,
            complexity: e.complexity,
            affordability: e.affordability))
        .toList()
        .obs;
  }

  @override
  void onInit() {
    getFilteredMealCard();
    super.onInit();
  }
}
