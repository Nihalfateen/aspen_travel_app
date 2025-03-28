import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/features/inner_details/views/widgets/body_widget.dart';
import 'package:aspen_travel_app/features/inner_details/views/widgets/inner_bottom_widget.dart';

import '../../../file_export.dart';
import '../../home/domain/model/popular_items_model.dart';
import 'widgets/image_widget.dart';

class InnerDetailsScreen extends StatelessWidget {
  const InnerDetailsScreen({super.key, required this.popularList});
  static const route = "/InnerDetailsScreen";
  final PopularItemsModel popularList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const InnerBottomWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.margin_20.w, vertical: 45.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWidget(
                image: popularList.image,
                isFav: popularList.name == "Alley Palace" ? true : false,
              ),
              SizedBox(
                height: AppDimensions.margin_8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    popularList.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    AppStrings.showMap,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.bluePrimaryColor),
                  )
                ],
              ),
              SizedBox(
                height: AppDimensions.margin_6.h,
              ),
              SvgPicture.asset(AppImages.rateImage),
              SizedBox(
                height: AppDimensions.margin_16.h,
              ),
              const BodyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
