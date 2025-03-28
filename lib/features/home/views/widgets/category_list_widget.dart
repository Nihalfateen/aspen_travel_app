import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/features/home/domain/cubit/category_cubit.dart';
import 'package:aspen_travel_app/file_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/categories_enum.dart';

///this for Category List the user can select any category
class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryCubit = context.watch<CategoryCubit>();
    return SizedBox(
      height: ScreenUtil().screenHeight * 0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryEnum.values.length,
        itemBuilder: (_, index) {
          final category = CategoryEnum.values[index];
          return InkWell(
            onTap: () => context.read<CategoryCubit>().updateCategory(category),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.margin_16.w,
                vertical: AppDimensions.margin_12.h,
              ),
              decoration: BoxDecoration(
                color: categoryCubit.state == CategoryEnum.values[index]
                    ? Colors.blue.withValues(alpha: 0.1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(AppDimensions.margin_20),
              ),
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: categoryCubit.state == category
                          ? AppColors.bluePrimaryColor
                          : AppColors.hintTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}
