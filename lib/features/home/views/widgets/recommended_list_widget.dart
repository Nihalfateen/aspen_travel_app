import 'package:aspen_travel_app/features/home/domain/cubit/cubit/recommended_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../file_export.dart';

class RecommendedListWidget extends StatelessWidget {
  const RecommendedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendedListCubit = context.watch<RecommendedCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommended",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.bluePrimaryColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        SizedBox(
          height: ScreenUtil().screenHeight * 0.25,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: recommendedListCubit.state.length,
            itemBuilder: (context, index) {
              final recommended = recommendedListCubit.state[index];
              return InkWell(
                onTap: () {},
                child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: AppColors.textFieldFillColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                           alignment: Alignment.topRight,
                            children: [
                              Image.asset(
                                recommended.image,
                                fit: BoxFit.contain,
                                width: 180.w,
                                filterQuality: FilterQuality.high,
                              ),
                              Positioned(
                                right: 10,
                              top: 80,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 2.h),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.w, vertical: 4.h),
                                    decoration: BoxDecoration(
                                      color: AppColors.cardColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      recommended.rate,
                                      textAlign: TextAlign.left,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: AppColors.white,
                                            fontSize: 10.sp,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 8.w, right: 8.w, top: 8.h, bottom: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommended.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 18.w),
          ),
        ),
      ],
    );
  }
}
