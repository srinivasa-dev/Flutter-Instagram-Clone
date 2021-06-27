import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';


class SearchBar extends StatelessWidget {
  double width;
  final FocusNode focus;
  SearchBar({Key key, this.width, this.focus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
          focusNode: focus,
          style: TextStyle(
              fontFamily: 'Roboto',
              color: AppColor.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w400
          ),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
                fontFamily: 'Roboto',
                color: AppColor.hintTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w300
            ),
            prefixIcon: Image.asset(
              'assets/Icons/search.png',
              color: AppColor.iconColor,
              scale: 32,
            ),
            filled: true,
            fillColor: AppColor.searchBar,
            border: InputBorder.none,
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          cursorColor: AppColor.iconColor,
          textInputAction: TextInputAction.search
      ),
    );
  }
}
