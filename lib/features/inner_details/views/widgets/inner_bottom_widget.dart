import 'package:aspen_travel_app/file_export.dart';

import '../../../../common/widgets/app_button.dart';
import '../../../../core/constants/app_dimensions.dart';

class InnerBottomWidget extends StatelessWidget {
  const InnerBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.margin_20.w,
        vertical: AppDimensions.margin_20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.price,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 12.sp),
              ),
              Text(
                "\$199",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.greenColor),
              ),
            ],
          ),
          CustomButton(
            text: AppStrings.bookNow,
            width: 200.w,
            height: 56.h,
            onPressed: () {},
            showArrow: true,
            gradient: const LinearGradient(
              colors: [
                AppColors.bluePrimaryColor,
                AppColors.blueSecondaryColor
              ],
            ),
          ),
        ],
      ),
    );
  }
}
