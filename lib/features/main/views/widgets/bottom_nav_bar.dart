import 'package:aspen_travel_app/file_export.dart';


class HomeBottomNavBar extends StatelessWidget {
  final int index;
  final StatefulNavigationShell navigationShell;

  const HomeBottomNavBar(this.index, this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(30), // Rounded edges
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
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
          const SizedBox(height: 8),
          SvgPicture.asset(
            icon,
            height: selected ? 28 : 24,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
