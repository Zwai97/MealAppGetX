import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/controller/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.favouriteMeals.isEmpty
            ? const Center(
                child: Text('Your Favourite List is Empty...'),
              )
            : GetX<FavouriteController>(
                builder: (controller) => ListView.builder(
                  itemCount: controller.favouriteMeals.length,
                  itemBuilder: (context, i) => controller.favouriteMeals[i],
                ),
              ));
  }
}
