import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/controller/meal_controller.dart';

class MealsView extends GetView<MealController> {
  const MealsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.arguments['text']}'),
      ),
      body: GetX<MealController>(
        builder: (controller) => ListView.builder(
            itemCount: controller.mealFilter.length,
            itemBuilder: (context, i) => controller.mealFilter[i]),
      ),
    );
  }
}
