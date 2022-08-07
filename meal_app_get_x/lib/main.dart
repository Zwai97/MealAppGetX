import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meal_app_get_x/services/services_settings.dart';
import 'package:meal_app_get_x/view/details_meal.dart';

import 'utils/bind.dart';
import 'utils/theme.dart';
import 'view/filter_view.dart';
import 'view/home_page.dart';
import 'view/meal_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(DevicePreview(builder: (context) => const MyApp()));
}

initServices() async {
  await Get.putAsync(() => CacheService().init(), permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(800.0, 1232.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
              name: '/',
              page: () => const HomePage(),
              bindings: [HomeBind(), CategoriesBind(), FavouriteMealsBind()],
              transition: Transition.zoom),
          GetPage(
              name: '/filters',
              page: () => const FilterView(),
              binding: FilterBind(),
              transition: Transition.zoom),
          GetPage(
              name: '/meals',
              page: () => const MealsView(),
              binding: MealBind(),
              transition: Transition.zoom),
          GetPage(
              name: '/detailsmeal',
              page: () => const DetailsMeal(),
              binding: DetailsMealBind(),
              transition: Transition.zoom),
        ],
        initialRoute: '/',
        theme: Themes.customTheme(),
      ),
    );
  }
}
