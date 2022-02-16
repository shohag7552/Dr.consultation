import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../comments/schedule_card.dart';

class DetailScreen extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;

  DetailScreen(this._name, this._description, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/detail_screen.jpeg",
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SvgPicture.asset(
                      "assets/icons/3dots.svg",
                      height: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: KBackgroundcolor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex:3,
                            child: Image.asset(
                              _imageUrl,
                              height: 120,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex:7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: KTitleTextcolor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  _description,
                                  style: TextStyle(
                                    color: KTitleTextcolor.withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: KBluecolor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/video.svg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: KYellowcolor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/video.svg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: KOrangecolor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/video.svg",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "About Doctor",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: KTitleTextcolor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Medicine, heart disease, chest pain, liver, and diabetes specialist",
                        style: TextStyle(
                          height: 1.6,
                          color: KTitleTextcolor.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Consultation Schedules",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: KTitleTextcolor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScheduleCard(
                        "Consultation",
                        "sunday . 9am - 11am",
                        "12",
                        "feb",
                        KBluecolor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScheduleCard(
                        "Consultation",
                        "Monday . 9am - 11am",
                        "13",
                        "feb",
                        KOrangecolor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScheduleCard(
                        "Consultation",
                        "Tuesday . 9am - 11am",
                        "14",
                        "feb",
                        KYellowcolor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScheduleCard(
                        "Consultation",
                        "Wednesday . 9am - 11am",
                        "15",
                        "feb",
                        KBluecolor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ScheduleCard(
                        "Consultation",
                        "Thursday . 9am - 11am",
                        "16",
                        "feb",
                        KOrangecolor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
