import 'package:aspen_travel_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final Color? textColor;
  final double? borderRadius;
  final bool? showArrow;
  final EdgeInsets?padding;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.gradient,
    this.textColor,
    this.borderRadius,
    this.showArrow,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradient ??
              const LinearGradient(
                colors: [
                  AppColors.bluePrimaryColor,
                  AppColors.blueSecondaryColor
                ],
              ),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            ),
          ),
          onPressed: onPressed,
          child: (showArrow ?? false)
              ? Padding(
                padding: padding??EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  
                   
                    children: [
                      Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: AppColors.white),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(Icons.arrow_forward, color: AppColors.white)
                    ],
                  ),
              )
              : Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: AppColors.white),
                ),
        ),
      ),
    );
  }
}
