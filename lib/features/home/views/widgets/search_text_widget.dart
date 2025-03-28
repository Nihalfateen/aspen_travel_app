import 'package:aspen_travel_app/file_export.dart';

class SearchBarWidget extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  TextEditingController searchController = TextEditingController();
  SearchBarWidget({super.key, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight * 0.07,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: TextField(
        controller: searchController,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: SvgPicture.asset(
            AppImages.searchIcon,
          ),
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.hintTextColor,
                fontSize: 13.sp,
              ),
        ),
      ),
    );
  }
}
