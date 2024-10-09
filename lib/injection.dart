// ignore_for_file: non_constant_identifier_names

import 'package:get_it/get_it.dart';

import 'stores/list/brand_store.dart';
import 'stores/list/ingredient_store.dart';
import 'stores/list/recipe_category_store.dart';
import 'stores/list/recipe_store.dart';
import 'stores/others/filter_search_store.dart';
import 'stores/others/login_store.dart';
import 'stores/others/page_store.dart';
import 'stores/others/user_manager_store.dart';

void ConfigureDependencies() {
  GetIt.I.registerSingleton(UserManagerStore());
  GetIt.I.registerSingleton(LoginStore());
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(FilterSearchStore());
  GetIt.I.registerSingleton(BrandStore());
  GetIt.I.registerSingleton(IngredientStore());
  GetIt.I.registerSingleton(RecipeStore());
  GetIt.I.registerSingleton(RecipeCategoryStore());
}
