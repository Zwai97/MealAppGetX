import 'package:get/get.dart';
import 'package:meal_app_get_x/controller/categories_controller.dart';
import 'package:meal_app_get_x/controller/details_meal.dart';
import 'package:meal_app_get_x/controller/favourite_controller.dart';
import 'package:meal_app_get_x/controller/filter_controller.dart';
import 'package:meal_app_get_x/controller/meal_controller.dart';

import '../controller/home_controller.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}

class FilterBind extends Bindings {
  @override
  void dependencies() {
    Get.put<FilterController>(FilterController(), permanent: true);
  }
}

class CategoriesBind extends Bindings {
  @override
  void dependencies() {
    Get.put<CatergoriesController>(CatergoriesController());
  }
}

class MealBind extends Bindings {
  @override
  void dependencies() {
    Get.put<MealController>(MealController());
  }
}

class DetailsMealBind extends Bindings {
  @override
  void dependencies() {
    Get.put<DetailsMealController>(DetailsMealController());
  }
}

class FavouriteMealsBind extends Bindings {
  @override
  void dependencies() {
    Get.put<FavouriteController>(FavouriteController(), permanent: true);
  }
}
