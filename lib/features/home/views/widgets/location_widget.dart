

import '../../../../file_export.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Explore",style:Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.black),),
                 Text("Aspen",style:Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.black,fontSize:24.sp,fontFamily: "Montserrat")),
              ],
            ),
           const Spacer(),
            SvgPicture.asset(AppImages.locationIcon),
            SizedBox(width: 6.w,),
            Text("Aspen, USA",style:Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.black,fontSize:12.sp),),
             SizedBox(width: 6.w,),
             const Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.bluePrimaryColor,size: 16,)
          ],);
  }
}