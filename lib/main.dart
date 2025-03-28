import 'package:aspen_travel_app/core/theme/app_themes.dart';
import 'package:aspen_travel_app/file_export.dart';


void main() async {
 
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    
    return ScreenUtilInit(
      designSize: const Size(375, 812), 
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.route,
          themeMode: ThemeMode.light,
           debugShowCheckedModeBanner: false,
          theme: AppThemes.appTheme, 
          title: AppStrings.aspendTravel,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.noScaling, 
              ),
              child: child!,
            );
          },
        );
      });
}}