import 'package:aspen_travel_app/core/constants/app_dimensions.dart';
import 'package:aspen_travel_app/file_export.dart';

class SearchBarWidget extends StatefulWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;

  const SearchBarWidget({super.key, this.hintText, this.onChanged});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight * 0.07,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppDimensions.margin_30),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.margin_10.w,
        vertical: AppDimensions.margin_12.h,
      ),
      child: TextField(
        controller: searchController,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          prefixIcon: Transform.scale(
            scale: .6,
            child: SvgPicture.asset(
              AppImages.searchIcon,
            ),
          ),
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.hintTextColor,
                fontSize: 13.sp,
              ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
