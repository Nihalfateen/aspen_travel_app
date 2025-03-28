import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/file_export.dart';

class HomeBottomNavBar extends StatelessWidget {
  final int index;
  final StatefulNavigationShell navigationShell;

  const HomeBottomNavBar(this.index, this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.margin_10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppDimensions.margin_32),
          topRight: Radius.circular(AppDimensions.margin_32),
          bottomLeft: Radius.circular(AppDimensions.margin_6),
          bottomRight: Radius.circular(AppDimensions.margin_6),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity( 0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navBarItem(
            context: context,
            naviIndex: index,
            itemIndex: 0,
            icon: AppImages.homeIcon,
          ),
          navBarItem(
            context: context,
            itemIndex: 1,
            naviIndex: index,
            icon: AppImages.ticketsIcon,
          ),
          navBarItem(
            context: context,
            itemIndex: 2,
            naviIndex: index,
            icon: AppImages.heartBottomNavBarIcon,
          ),
          navBarItem(
            context: context,
            itemIndex: 3,
            naviIndex: index,
            icon: AppImages.profileIcon,
          ),
        ],
      ),
    );
  }

  Widget navBarItem({
    required BuildContext context,
    required int itemIndex,
    required int naviIndex,
    required String icon,
  }) {
    final bool selected = itemIndex == naviIndex;

    return InkWell(
      onTap: () {
        navigationShell.goBranch(
          itemIndex,
          initialLocation: itemIndex == navigationShell.currentIndex,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppDimensions.margin_8.h),
          SvgPicture.asset(
            icon,
            height: selected
                ? AppDimensions.margin_28.h
                : AppDimensions.margin_24.h,
          ),
          SizedBox(height: AppDimensions.margin_8.h),
        ],
      ),
    );
  }
}
