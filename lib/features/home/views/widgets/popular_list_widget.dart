import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../file_export.dart';
import '../../../inner_details/views/inner_details_screen.dart';
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
              AppStrings.popular,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: AppColors.bluePrimaryColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: AppDimensions.margin_8.h,
        ),
        SizedBox(
          height: ScreenUtil().screenHeight * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularListCubit.state.length,
            itemBuilder: (context, index) {
              final place = popularListCubit.state[index];
              return InkWell(
                onTap: () => GoRouter.of(context).pushNamed(
                  InnerDetailsScreen.route,
                  extra: place,
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: AppDimensions.margin_16.w),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.margin_24),
                        child: Image.asset(
                          place.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 45,
                        left: 10,
                        child: Container(
                          padding: EdgeInsets.all(AppDimensions.margin_4.h),
                          decoration: BoxDecoration(
                            color: AppColors.cardColor,
                            borderRadius:
                                BorderRadius.circular(AppDimensions.margin_12),
                          ),
                          child: Text(
                            place.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.white,
                                ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 13,
                        left: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppDimensions.margin_8.w,
                            vertical: AppDimensions.margin_4.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cardColor,
                            borderRadius:
                                BorderRadius.circular(AppDimensions.margin_12),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppImages.starIcon),
                              SizedBox(width: AppDimensions.margin_4.w),
                              Text(
                                place.rate.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 10.sp,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      place == popularListCubit.state.first
                          ? Positioned(
                              bottom: 10,
                              right: 10,
                              child: SvgPicture.asset(AppImages.favIcon),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
