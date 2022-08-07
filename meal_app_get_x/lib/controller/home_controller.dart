import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';

import '../view/bottom_nav_bar/categories_view.dart';
import '../view/bottom_nav_bar/favourite_view.dart';

class HomeController extends GetxController {
  final GlobalKey<AnimatorWidgetState> basicAnimation =
      GlobalKey<AnimatorWidgetState>();
  animateBounceIn() {
    basicAnimation.currentState!.forward();
  }

  List<Map<String, dynamic>> bottonNavBarScreens = [
    {'screen': const CategoriesView(), 'title': 'Categories'},
    {'screen': const FavouriteView(), 'title': 'Favourites'},
  ];
  RxInt currentIndex = 0.obs;
  //final CatergoriesController controller = Get.put(CatergoriesController());
}
