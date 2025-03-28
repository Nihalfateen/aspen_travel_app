import 'package:aspen_travel_app/features/home/domain/cubit/recommended_cubit.dart';
import 'package:aspen_travel_app/features/home/domain/cubit/popular_cubit.dart';
import 'package:aspen_travel_app/features/inner_details/views/inner_details_screen.dart';
import 'package:aspen_travel_app/file_export.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/domain/cubit/category_cubit.dart';
import '../../features/home/domain/model/popular_items_model.dart';
import '../../features/home/views/home_screen.dart';
import '../../features/main/views/main_screen.dart';
import '../../features/splash/views/splash_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'Home');
final shellNavigatorTicketsScreenKey =
    GlobalKey<NavigatorState>(debugLabel: 'TicketsScreen');
final shellNavigatorFavScreenKey =
    GlobalKey<NavigatorState>(debugLabel: ' FavScreen');
final shellNavigatorProfileScreenKey =
    GlobalKey<NavigatorState>(debugLabel: ' ProfileScreen');

class AppRouter {
  static final route = GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      observers: [],
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: SplashScreen.route,
          builder: (context, state) => const SplashScreen(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainScreen(navigationShell);
          },
          branches: [
            // The route branch for the 1º Tab
            StatefulShellBranch(
                navigatorKey: shellNavigatorHomeKey,
                routes: <RouteBase>[
                  GoRoute(
                    path: HomeScreen.route,
                    builder: (context, state) => MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => CategoryCubit(),
                        ),
                        BlocProvider(
                          create: (context) => PopularCubit(),
                        ),
                        BlocProvider(
                          create: (context) => RecommendedCubit(),
                        ),
                      ],
                      child: const HomeScreen(),
                    ),
                  ),
                ]),
          ],
        ),
         GoRoute(
          path: InnerDetailsScreen.route,
          name: InnerDetailsScreen.route,
          builder: (context, state) {
            final popularList = state.extra as PopularItemsModel;
            return InnerDetailsScreen(
              popularList: popularList,
            );
          } 
        ),
      ]
      );
}
