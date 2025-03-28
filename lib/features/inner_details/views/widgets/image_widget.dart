import '../../../../file_export.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key,required this.image,required this.isFav});
final String image;
final bool isFav;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: Stack(
         
        children: [
         ClipRRect(
            borderRadius: BorderRadius.circular(12), 
            child: Image.asset(
            image,
              width: 335.w,
              height: 340.h,
              fit: BoxFit.cover, 
            ),
          ),
        Positioned(
            top: 12,
            left: 15,
            child: InkWell(
              onTap: () => GoRouter.of(navigatorKey.currentContext!).pop(),
              child: Container(
                height: 40.h,
                width: 40.w,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: AppColors.textFieldFillColor,
                  borderRadius: BorderRadius.circular(8),
                   boxShadow:const  [
               BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 2),
              )
            ],
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.hintTextColor,
                  size: 15,
                ),
              ),
            )
            ),
       isFav? Positioned(
             bottom: -2,
            right: 10,
            child: SvgPicture.asset(AppImages.favIcon,height:44.h,width:44.w)):const SizedBox.shrink(),
      ]),
    );
  }
}
