
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
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 44.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationWidget(),
              SizedBox(
                height: 24.h,
              ),
              SearchBarWidget(
                hintText: "Find things to do",
              ),
              SizedBox(
                height: 32.h,
              ),
              const CategoryListWidget(),
              SizedBox(
                height: 32.h,
              ),
              const PopularListWidget(),
              SizedBox(
                height: 32.h,
              ),
              const RecommendedListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
