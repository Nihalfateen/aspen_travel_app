import '../../../../file_export.dart';
import 'facility_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text(
              "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping and ....",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 8),
            Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Read more", style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.bluePrimaryColor),),
                      SizedBox(width: 4.w),
                const Icon(Icons.keyboard_arrow_down, color: AppColors.bluePrimaryColor),
              ],
            ),
             SizedBox(height: 20.h),
            Text(
              "Facilities",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
             SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilityWidget(
                  image: AppImages.wifiIconSVG,
                  name: "1 Heater",
                ),
                FacilityWidget(
                  image: AppImages.foodIconSVG,
                  name: "Dinner",
                ),
                FacilityWidget(
                  image: AppImages.bathTubIconSVG,
                  name: "1 Tub",
                ),
                FacilityWidget(
                  image: AppImages.poolIconSVG,
                  name: "Pool",
                ),
              ],
            ),
            const SizedBox(height: 20),
    ],);
  }
}