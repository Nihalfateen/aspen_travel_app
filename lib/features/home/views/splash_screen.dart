import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/file_export.dart';

import '../../../common/widgets/app_button.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const route = "/SplashScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth / 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splashImagePNG),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 57.w, right: 55.w, top: 93.h),
              child: Text(
                AppStrings.aspen,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 43.w, right: 32.w, top: 320.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.planYour,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.white,
                            height: 1.1,
                          ),
                    ),
                    TextSpan(
                      text: AppStrings.luxurious,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.white,
                            height: 1.1,
                          ),
                    ),
                    TextSpan(
                      text: AppStrings.vacation,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.white,
                            height: 1.1,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppDimensions.margin_24.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.margin_24.w,
              ),
              child: Center(
                child: CustomButton(
                  text: AppStrings.explore,
                  width: double.infinity,
                  height: 52.h,
                  onPressed: () => GoRouter.of(context).go(HomeScreen.route),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.bluePrimaryColor,
                      AppColors.blueSecondaryColor
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
