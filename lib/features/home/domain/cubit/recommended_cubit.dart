import 'package:aspen_travel_app/features/home/domain/model/popular_items_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_assets_roots.dart';

class RecommendedCubit extends Cubit<List<PopularItemsModel>> {
  RecommendedCubit()
      : super(
          [
            PopularItemsModel(
              image: AppImages.exploreAspenImage,
              name: "Explore Aspen",
              rate: "4N/5D",
            ),
            PopularItemsModel(
              image: AppImages.luxuriousAspenImage,
              name: "Luxurious Aspen",
              rate: "2N/3D",
            ),
          ],
        );
}
