import 'package:get/get.dart';

import '../model/category.dart';
import '../model/meal.dart';
import '../utils/1.1 dummy_data.dart';

class FilterController extends GetxController {
  RxMap<String, bool> filters = {
    'glutenFree': false,
    'lactoseFree': false,
    'vegen': false,
    'vegtarianFree': false,
  }.obs;
  List<Meal> availableMeals = DUMMY_MEALS;

  List<Category> availableCategory = [];
  void setFilters() async {
    availableMeals = DUMMY_MEALS.where((meal) {
      if (filters['glutenFree']! && !meal.isGlutenFree) {
        return false;
      }
      if (filters['lactoseFree']! && !meal.isLactoseFree) {
        return false;
      }
      if (filters['vegen']! && !meal.isVegan) {
        return false;
      }
      if (filters['vegtarianFree']! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();
  }
}
