import 'package:aspen_travel_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final Color textColor;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width ,
    this.height ,
    this.gradient,
    this.textColor = Colors.white,
    this.borderRadius =16,
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
                colors: [AppColors.bluePrimaryColor, AppColors.blueSecondaryColor],
              ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
