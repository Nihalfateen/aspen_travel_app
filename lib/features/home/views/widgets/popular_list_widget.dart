
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../file_export.dart';
import '../../domain/cubit/popular_cubit.dart';

class PopularListWidget extends StatelessWidget {
  const PopularListWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    final popularListCubit = context.watch<PopularCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              "Popular",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.black,fontSize:18.sp,fontWeight: FontWeight.w700),
            ),
            TextButton(
              onPressed: () {},
              child:  Text(
                "See all",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.bluePrimaryColor,fontSize:12.sp,fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        SizedBox(
          height: ScreenUtil().screenHeight*0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularListCubit.state.length,
            itemBuilder: (context, index) {
              final place = popularListCubit.state[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        place.image,
                      
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 10,
                      child: Container(
                       
                       padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
                        decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          place.name,
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 13,
                      left: 10,
                    
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                        decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                             SvgPicture.asset(AppImages.starIcon),
                            const SizedBox(width: 4),
                            Text(
                              place.rate.toString(),
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white,fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                   place.name=="Alley Palace"?  Positioned(
                      bottom: 10,
                      right: 10,
                      child: SvgPicture.asset(AppImages.favIcon),
                    ):const SizedBox.shrink(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}