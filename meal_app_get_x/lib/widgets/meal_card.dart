// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../model/meal.dart';

class MealCard extends StatelessWidget {
  final String id;

  final String title;

  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealCard({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
  }) : super(key: key);
  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';

      case Affordability.pricey:
        return 'Pricey';

      case Affordability.luxurious:
        return 'Luxurious';

      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/detailsmeal', arguments: id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0.r),
                    topRight: Radius.circular(15.0.r)),
                child: Image.network(
                  imageUrl,
                  height: 400.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.watch_later_outlined),
                        SizedBox(width: 5.w),
                        Text('$duration'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work),
                        SizedBox(width: 5.w),
                        Text(complexityText),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money_outlined),
                        SizedBox(width: 5.w),
                        Text(affordabilityText),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
