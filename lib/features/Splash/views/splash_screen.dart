

import 'package:aspen_travel_app/core/constants/app_assets_roots.dart';
import 'package:aspen_travel_app/file_export.dart';


import '../../../common/widgets/app_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
 static const route = "/SplashScreen";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth/1,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.splashImagePNG),fit:BoxFit.fill,alignment: Alignment.center)),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding:  EdgeInsets.only(left: 57.w,right: 55.w,top: 93.h),
              child: Text("Aspen",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.only(left:43.w,right: 32.w,top:334.h ),
              child: RichText(
                softWrap: true,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Plan your\n",
                    
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white,height: 1.1)
                  ),
                  TextSpan(
                    text: "Luxurious\n",
                    style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.white,height: 1.1),
                  ),
                  TextSpan(
                    text: "Vacation",
                    style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.white,height: 1.1),
                  ),
                  
                ],)),
            ),
           SizedBox(height: 24.h),
            Center(
              child: CustomButton(
                text: "Explore",
                width: 311.w,
                height: 52.h,
                onPressed: () {
                  // Add your navigation or action logic here
                },
                gradient: const LinearGradient(colors: [AppColors.bluePrimaryColor,AppColors.blueSecondaryColor]),
              ),
            )

          ],) ,
        ),
      
           
        
    );
  }
}