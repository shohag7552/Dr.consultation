import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: KSearchBackgroundcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KTitleTextcolor,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Search for doctor',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey)
                )),
          ),
          MaterialButton(
            onPressed: () {},
            color: KOrangecolor,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                "assets/icons/search.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
