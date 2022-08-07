import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/theme.dart';
import 'custom_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40.w),
            width: double.infinity,
            height: 120.h,
            decoration: const BoxDecoration(color: Colors.amber),
            child: Text('Cooking Up!',
                style: TextStyle(
                    color: Themes.customTheme().colorScheme.primary,
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 30.h),
          CustomListTile(
            enable: true,
            leading: Icon(
              Icons.restaurant_menu,
              size: 50.sp,
              color: Colors.grey,
            ),
            function: () {
              Get.offNamed('/');
            },
            text: 'Meal',
          ),
          CustomListTile(
            enable: true,
            leading: Icon(
              Icons.settings,
              size: 50.sp,
              color: Colors.grey,
            ),
            function: () {
              Get.offNamed('/filters');
            },
            text: 'Filters',
          ),
        ],
      ),
    );
  }
}
