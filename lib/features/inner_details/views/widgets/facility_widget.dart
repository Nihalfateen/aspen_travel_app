import '../../../../file_export.dart';

class FacilityWidget extends StatelessWidget {
  const FacilityWidget({super.key, required this.image, required this.name});
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 74.h,
              width: 77.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical:8.h),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
      child: Column(
        children: [
          SvgPicture.asset(image),
         const SizedBox(height: 4),
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
