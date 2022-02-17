

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';

class ScheduleCard extends StatelessWidget {
  var title;
  var description;
  var date;
  var month;
  var bgcolor;
  var selectColor;


  ScheduleCard({this.title, this.description, this.date, this.month, this.bgcolor,this.selectColor});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgcolor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: selectColor ?? bgcolor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  date,
                  style: TextStyle(
                    color: bgcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  month,
                  style: TextStyle(
                    color: bgcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: KTitleTextcolor,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              color: KTitleTextcolor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
