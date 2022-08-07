import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/categories_controller.dart';

class CategoriesView extends GetView<CatergoriesController> {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400.w,
            childAspectRatio: 4.w / 2.h,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.w,
          ),
          itemCount: controller.list.length,
          itemBuilder: (context, i) => GetX<CatergoriesController>(
            builder: (controller) => controller.list[i],
          ),
        ),
      ),
    );
  }
}
