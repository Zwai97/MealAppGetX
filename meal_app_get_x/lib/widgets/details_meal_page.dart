import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_app_get_x/utils/theme.dart';

class DetailsMealPage extends StatelessWidget {
  final List<String> ingredients;
  final List<String> steps;
  final String title;
  final String img;

  final String id;
  const DetailsMealPage(
      {Key? key,
      required this.ingredients,
      required this.steps,
      required this.img,
      required this.title,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Image.network(
            img,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Ingredients',
                  style: Themes.customTheme().textTheme.subtitle1,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 175.h,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        side: BorderSide(
                            width: 1.w, color: Colors.black.withOpacity(0.3))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ingredients.length,
                        itemBuilder: (context, i) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Themes.customTheme().colorScheme.secondary,
                          ),
                          margin: EdgeInsets.all(10.w),
                          padding: EdgeInsets.all(10.w),
                          child: Text(
                            ingredients[i],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Steps',
                  style: Themes.customTheme().textTheme.subtitle1,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 175.h,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        side: BorderSide(
                            width: 1.w, color: Colors.black.withOpacity(0.3))),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.w),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              Divider(color: Colors.black.withOpacity(0.2)),
                          itemCount: steps.length,
                          itemBuilder: (context, i) => ListTile(
                                title: Text(
                                  steps[i],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal),
                                ),
                                leading: CircleAvatar(
                                  backgroundColor: Themes.customTheme()
                                      .colorScheme
                                      .secondary,
                                  child: Text(
                                    '#${i + 1}',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                ),
                              )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
