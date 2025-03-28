


import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/categories_enum.dart';

class CategoryCubit extends Cubit<Categoryenum?> {
  CategoryCubit() : super(Categoryenum.values.first);
 
void updateCategory(Categoryenum category) {
    emit(category); 
  }
}
