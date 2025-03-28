
import 'package:aspen_travel_app/file_export.dart'; 

class AppThemes {
 static ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.white,
    cardColor: AppColors.cardColor,
    fontFamily: 'Montserrat', 
    textTheme: textTheme,
  );

  static   TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Hiatus',  
      fontSize: 116.sp,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Montserrat',  
      fontSize: 40.sp,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Montserrat', 
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
    ),
     titleSmall: TextStyle(
      fontFamily: 'Montserrat', 
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Montserrat', 
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    ),
  );
}
