import 'package:aspen_travel_app/core/constants/app_dimensions.dart';

import '../../../../file_export.dart';

class FacilityWidget extends StatelessWidget {
  const FacilityWidget({super.key, required this.image, required this.name});
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 77.w,
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.margin_16.w,
          vertical: AppDimensions.margin_8.h),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity( 0.1),
        borderRadius: BorderRadius.circular(AppDimensions.margin_8),
      ),
      child: Column(
        children: [
          SvgPicture.asset(image),
          SizedBox(height: AppDimensions.margin_4.h),
          Text(
            name,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.hintTextColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
