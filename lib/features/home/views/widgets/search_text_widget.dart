
import 'package:aspen_travel_app/file_export.dart';


class SearchBarWidget extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  TextEditingController searchController = TextEditingController();
   SearchBarWidget({super.key, this.hintText , this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: ScreenUtil().screenHeight*0.07,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1), 
        borderRadius: BorderRadius.circular(30), 
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16), 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
           AppImages.searchIcon, 
            width: 20,
            height: 20,
           
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              
              controller:searchController ,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                 
                hintStyle:Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.textFieldColor,fontSize:13.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
