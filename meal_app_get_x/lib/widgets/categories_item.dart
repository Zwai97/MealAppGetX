import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/theme.dart';

class CategoriesItem extends StatelessWidget {
  final String id;
  final String text;
  final Color color;

  const CategoriesItem(
      {Key? key, required this.id, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15.r),
      splashColor: Themes.customTheme().colorScheme.primary,
      onTap: () {
        Get.toNamed('/meals', arguments: {'id': id, 'text': text});
      },
      child: Container(
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color,
                  color.withOpacity(0.4),
                ])),
        child: Text(
          text,
          style: Themes.customTheme().textTheme.subtitle1,
        ),
      ),
    );
  }
}
