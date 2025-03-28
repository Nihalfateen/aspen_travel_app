import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/categories_enum.dart';

class CategoryCubit extends Cubit<CategoryEnum?> {
  CategoryCubit() : super(CategoryEnum.values.first);

  void updateCategory(CategoryEnum category) => emit(category);
}
