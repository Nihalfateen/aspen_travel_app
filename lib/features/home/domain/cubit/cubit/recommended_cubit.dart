import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_assets_roots.dart';
import '../../model/recommended_items_model.dart';

class RecommendedCubit extends Cubit<List<RecommendedItemsModel>> {
  RecommendedCubit()
      : super([
          RecommendedItemsModel(
              image: AppImages.exploreAspenImage,
              name: "Explore Aspen",
              rate: "4N/5D"),
          RecommendedItemsModel(
              image: AppImages.luxuriousAspenImage,
              name: "Luxurious Aspen",
              rate: "2N/3D"),
        ]);
}
