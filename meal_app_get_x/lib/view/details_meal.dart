import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/controller/details_meal.dart';

import '../controller/favourite_controller.dart';

class DetailsMeal extends GetView<DetailsMealController> {
  const DetailsMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.detailsMeal.value.title),
      ),
      body: GetX<DetailsMealController>(
        builder: (controller) => controller.detailsMeal.value,
      ),
      floatingActionButton: GetX<FavouriteController>(
        builder: (controller) => BounceIn(
          key: controller.basicAnimation,
          child: FloatingActionButton(
              onPressed: () {
                controller.toggleFavourite(Get.arguments);
                controller.animateBounceIn();
              },
              backgroundColor:
                  controller.isFavourite() ? Colors.amber : Colors.transparent,
              child: Icon(controller.isFavourite()
                  ? Icons.favorite
                  : Icons.favorite_border)),
        ),
      ),
    );
  }
}
