import 'package:get/get.dart';

import '../utils/1.1 dummy_data.dart';
import '../widgets/categories_item.dart';

class CatergoriesController extends GetxController {
  RxList<CategoriesItem> list = DUMMY_CATEGORIES
      .map((e) => CategoriesItem(id: e.id, text: e.title, color: e.color))
      .toList()
      .obs;
}
