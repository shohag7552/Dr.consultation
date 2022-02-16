

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';

import '../screens/detail_screen.dart';

class DoctorCard extends StatelessWidget {
  var name;
  var description;
  var imageUrl;
  var bgcolor;

  DoctorCard({this.name, this.description, this.imageUrl, this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(name, description, imageUrl),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bgcolor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.04),
               blurRadius: 10,
               offset: Offset(0,2),
             )
           ]
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(
              imageUrl,
            ),
            title: Text(
              name,
              style: TextStyle(
                color: KTitleTextcolor,
                fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
