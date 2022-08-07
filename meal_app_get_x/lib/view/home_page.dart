import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../utils/theme.dart';
import '../widgets/mydrawer.dart';

class HomePage extends GetView {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
          title: GetX<HomeController>(
        builder: (controller) => Text(
            '${controller.bottonNavBarScreens[controller.currentIndex.value]['title']}'),
      )),
      body: GetX<HomeController>(
        builder: (controller) => controller
            .bottonNavBarScreens[controller.currentIndex.value]['screen'],
      ),
      bottomNavigationBar: GetX<HomeController>(
        builder: (controller) => Bounce(
          key: controller.basicAnimation,
          child: BottomNavigationBar(
              unselectedItemColor: Colors.white,
              selectedItemColor: Themes.customTheme().colorScheme.secondary,
              backgroundColor: Themes.customTheme().colorScheme.primary,
              currentIndex: controller.currentIndex.value,
              onTap: (val) {
                controller.animateBounceIn();
                controller.currentIndex.value = val;
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Categories'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star), label: 'Favourites'),
              ]),
        ),
      ),
    );
  }
}
