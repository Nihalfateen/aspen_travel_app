import 'package:aspen_travel_app/features/inner_details/views/widgets/body_widget.dart';


import '../../../common/widgets/app_button.dart';
import '../../../file_export.dart';
import '../../home/domain/model/popular_items_model.dart';
import 'widgets/image_widget.dart';

class InnerDetailsScreen extends StatelessWidget {
  const InnerDetailsScreen({super.key,required this.popularList});
  static const route = "/InnerDetailsScreen";
  final  PopularItemsModel popularList ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ImageWidget(image:popularList.image,isFav:popularList.name=="Alley Palace"? true:false,),
              
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   popularList.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Show map",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.bluePrimaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              SvgPicture.asset(AppImages.rateImage),
               SizedBox(
                height: 16.h,
              ),
              const BodyWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w500,
                                
                                fontSize: 12.sp),
                      ),
                      Text(
                "\$199",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.greenColor),
              ),
                    ],
                  ),
                   CustomButton(
                text: "Book Now",
                width: 200.w,
                height: 56.h,
                onPressed: () {
                 
                },
                showArrow: true,
                gradient: const LinearGradient(colors: [AppColors.bluePrimaryColor,AppColors.blueSecondaryColor]),
              ),
                ],
              ),
              
              
            
            ],
          ),
        ),
      ),
    );
  }
}
