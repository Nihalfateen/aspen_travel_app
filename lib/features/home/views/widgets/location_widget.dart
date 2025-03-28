import 'package:aspen_travel_app/core/constants/app_dimensions.dart';

import '../../../../file_export.dart';

/// Location widget the user can change location
class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.explore,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.black),
            ),
            Text(
              AppStrings.aspen,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(AppImages.locationIcon),
        SizedBox(
          width: AppDimensions.margin_6.w,
        ),
        Text(
          AppStrings.aspnUsa,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.black,
                fontSize: 12.sp,
              ),
        ),
        SizedBox(
          width: AppDimensions.margin_6.w,
        ),
        const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: AppColors.bluePrimaryColor,
          size: 16,
        )
      ],
    );
  }
}
