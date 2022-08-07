import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/widgets/meal_card.dart';

import '../services/services_settings.dart';
import '../utils/1.1 dummy_data.dart';

class FavouriteController extends GetxController {
  final con = Get.find<CacheService>();
  final GlobalKey<AnimatorWidgetState> basicAnimation =
      GlobalKey<AnimatorWidgetState>();
  animateBounceIn() {
    basicAnimation.currentState!.forward();
  }

  RxList favouriteMeals = [].obs;
  List<String>? prefsMealId = [];
  List<MealCard> allMealCard = DUMMY_MEALS
      .map((e) => MealCard(
          id: e.id,
          title: e.title,
          imageUrl: e.imageUrl,
          duration: e.duration,
          complexity: e.complexity,
          affordability: e.affordability))
      .toList();
  bool isFavourite() {
    return favouriteMeals.any((element) => element.id == Get.arguments);
  }

  getAllFavouriteMeal() {
    for (var mealId in con.pref.getStringList('id') ?? []) {
      favouriteMeals
          .add(allMealCard.firstWhere((element) => element.id == mealId));
    }
  }

  toggleFavourite(String id) async {
    final int currentIndex =
        favouriteMeals.indexWhere((element) => element.id == id);
    if (currentIndex >= 0) {
      favouriteMeals.removeAt(currentIndex);
      prefsMealId!.remove(id);
    } else {
      favouriteMeals.add(allMealCard.firstWhere((element) => element.id == id));
      prefsMealId!.add(id);
    }
    await con.pref.setStringList('id', prefsMealId!);
  }

  @override
  void onInit() {
    getAllFavouriteMeal();
    super.onInit();
  }
}
