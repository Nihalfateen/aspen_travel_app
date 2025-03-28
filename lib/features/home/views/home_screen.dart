import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/features/home/views/widgets/location_widget.dart';
import 'package:aspen_travel_app/features/home/views/widgets/search_text_widget.dart';
import 'package:aspen_travel_app/file_export.dart';

import 'widgets/category_list_widget.dart';
import 'widgets/popular_list_widget.dart';
import 'widgets/recommended_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const route = "/HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: AppDimensions.margin_20.w,
          right: AppDimensions.margin_20.w,
          top: 44.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationWidget(),
              SizedBox(
                height: AppDimensions.margin_24.h,
              ),
              const SearchBarWidget(
                hintText: AppStrings.findThingsToDo,
              ),
              SizedBox(
                height: AppDimensions.margin_32.h,
              ),
              const CategoryListWidget(),
              SizedBox(
                height: AppDimensions.margin_32.h,
              ),
              const PopularListWidget(),
              SizedBox(
                height: AppDimensions.margin_32.h,
              ),
              const RecommendedListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
