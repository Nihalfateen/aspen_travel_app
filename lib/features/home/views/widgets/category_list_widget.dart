


import 'package:aspen_travel_app/features/home/domain/cubit/cubit/category_cubit.dart';
import 'package:aspen_travel_app/file_export.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/categories_enum.dart';


class CategoryListWidget extends StatelessWidget {
 

   const CategoryListWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryCubit = context.watch<CategoryCubit>();
    return SizedBox(
      height: ScreenUtil().screenHeight*0.05, 
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Categoryenum.values.length,
        itemBuilder: (_, index) {
          
          return InkWell(
            onTap: () {

            //  context.read<CategoryCubit>()=Categoryenum.values[index];
            },
            child: Container(
             
              decoration: BoxDecoration(
                color: categoryCubit.state==Categoryenum.values[index] ? Colors.blue.withOpacity(0.1) : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                Categoryenum.values[index].name,
              
                style:Theme.of(context).textTheme.titleSmall!.copyWith(color:categoryCubit.state==Categoryenum.values[index]? AppColors.bluePrimaryColor : AppColors.textFieldColor,fontSize:14.sp),
              ),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index)=> SizedBox(width: 28.w) ,
      ),
    );
  }
}
