import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_assets_roots.dart';
import '../model/popular_items_model.dart';



class PopularCubit extends Cubit<List<PopularItemsModel>> {
  PopularCubit() : super([
    PopularItemsModel(image: AppImages.alleyPalaceImage,name:"Alley Palace",rate: 4.1),
    PopularItemsModel(image: AppImages.coeurdesAlpesImage,name:"Coeurdes Alpes",rate: 4.5),
    
  ]);
 

}