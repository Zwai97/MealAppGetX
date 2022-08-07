import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/controller/filter_controller.dart';
import 'package:meal_app_get_x/widgets/mydrawer.dart';

import '../widgets/custom_list_tile.dart';

class FilterView extends GetView<FilterController> {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Filters'),
        actions: [
          IconButton(
              onPressed: () {
                controller.setFilters();
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Adjuct Your Meal Selection',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp),
            ),
            const SizedBox(height: 20),
            CustomListTile(
                enable: false,
                text: 'Gluten-Free',
                function: () => null,
                subtitle: const Text('Only Include Gluten-Free Meals'),
                trailing: GetX<FilterController>(
                  builder: (controller) => Switch(
                    onChanged: (newval) {
                      controller.filters['glutenFree'] = newval;
                    },
                    value: controller.filters['glutenFree']!,
                  ),
                )),
            CustomListTile(
                enable: false,
                text: 'Lactose-Free',
                function: () => null,
                subtitle: const Text('Only Include Lactose-Free Meals'),
                trailing: GetX<FilterController>(
                  builder: (controller) => Switch(
                    onChanged: (newval) {
                      controller.filters['lactoseFree'] = newval;
                    },
                    value: controller.filters['lactoseFree']!,
                  ),
                )),
            CustomListTile(
                enable: false,
                text: 'Vegen',
                function: () => null,
                subtitle: const Text('Only Include Vegen Meals'),
                trailing: GetX<FilterController>(
                  builder: (controller) => Switch(
                    onChanged: (newval) {
                      controller.filters['vegen'] = newval;
                    },
                    value: controller.filters['vegen']!,
                  ),
                )),
            CustomListTile(
                enable: false,
                text: 'Vegtarian-Free',
                function: () => null,
                subtitle: const Text('Only Include Vegtarian-Free Meals'),
                trailing: GetX<FilterController>(
                  builder: (controller) => Switch(
                    onChanged: (newval) {
                      controller.filters['vegtarianFree'] = newval;
                    },
                    value: controller.filters['vegtarianFree']!,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
