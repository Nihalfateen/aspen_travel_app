import 'package:aspen_travel_app/file_export.dart';


import '../../features/splash/views/splash_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final route = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    observers: [
     
    ],
    routes: <RouteBase>[
    
      GoRoute(
        path: '/',
        name: SplashScreen.route,
        builder: (context, state) => const SplashScreen(),
      ),
    
        
        
        
      ]);
    
  
}
