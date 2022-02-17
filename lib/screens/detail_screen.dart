import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../comments/row_data.dart';
import '../comments/schedule_card.dart';
import '../utills/custom_snackbar.dart';

class DetailScreen extends StatefulWidget {
  var _name;
  var _description;
  var _imageUrl;

  DetailScreen(this._name, this._description, this._imageUrl);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int? select;

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
                            flex: 3,
                            child: Image.asset(
                              widget._imageUrl,
                              height: 120,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget._name,
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
                                  widget._description,
                                  style: TextStyle(
                                    color: KTitleTextcolor.withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        launch("tel:+8801393524");
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: KBluecolor.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child:
                                            const Icon(Icons.phone, size: 22),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showCustomSnackBar(
                                            "this feature will added soon",
                                            context,
                                            isError: true);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: KYellowcolor.withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Icon(Icons.message, size: 22),
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
                      ListView.builder(
                          itemCount: schedulList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () {
                                  select = schedulList[index]['index'];
                                  setState(() {});
                                  showCustomSnackBar('Your consultation fix on ${schedulList[index]['date']} ${schedulList[index]['month']} ${schedulList[index]['time'] }', context,isError: false);
                                },
                                /*child: ScheduleCard(bgcolor: schedulList[index]['color'],title: schedulList[index]['title'],
                             description: schedulList[index]['time'],date: schedulList[index]['date'],month: schedulList[index]['month'],
                            selectColor: select == schedulList[index]['index'] ? KSelectcolor : Kolor),*/
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: schedulList[index]['index'] == select ? Colors.green.shade200 : schedulList[index]['color'].withOpacity(0.1),
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
                                          color: schedulList[index]['color'].withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              schedulList[index]['date'],
                                              style: TextStyle(
                                                color: schedulList[index]['color'],
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              schedulList[index]['month'],
                                              style: TextStyle(
                                                color: schedulList[index]['color'],
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      title: Text(
                                        schedulList[index]['title'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: KTitleTextcolor,
                                        ),
                                      ),
                                      subtitle: Text(
                                        schedulList[index]['time'],
                                        style: TextStyle(
                                          color:
                                              KTitleTextcolor.withOpacity(0.7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                      /*ScheduleCard(
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
                      ),*/
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
