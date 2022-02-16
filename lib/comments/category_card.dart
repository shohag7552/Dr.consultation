import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  var title;
  var svgpitureUrl;
  var bgcolor;

  CategoryCard({this.title, this.svgpitureUrl, this.bgcolor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 137,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: TextStyle(
                    color: KTitleTextcolor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 84,
              width: 84,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                svgpitureUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
