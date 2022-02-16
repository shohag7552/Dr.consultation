import 'package:flutter/material.dart';
import 'package:flutter_application_3/comments/category_card.dart';
import 'package:flutter_application_3/comments/doctor_card.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_application_3/screens/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../comments/row_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundcolor,
      appBar: AppBar(
        backgroundColor: KBackgroundcolor,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 35,
              width: 35,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
              ),
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Find Your Desired\nDoctor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: KTitleTextcolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: KTitleTextcolor,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // buildcategorylist(),

              SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(left: 30),
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CategoryCard(
                              title: category[index]['name'],
                              svgpitureUrl: category[index]['image'],
                              bgcolor: category[index]['color'],
                            ),
                          ))),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Top Doctor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: KTitleTextcolor,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // buildDoctorList(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: doctorList.length,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DoctorCard(
                    name: doctorList[index]['title'],description: doctorList[index]['description'],
                    imageUrl: doctorList[index]['image'],bgcolor: doctorList[index]['color'],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /* buildcategorylist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            "Dental\nSurgeon",
            "assets/icons/dental_surgeon.svg",
            KBluecolor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            "Heart\nSurgeon",
            "assets/icons/Heart_surgeon.svg",
            KOrangecolor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            "Eye\nSpecialist",
            "assets/icons/eye_specialist.svg",
            KYellowcolor,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }*/
/*
  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            "Professor Dr. Mohammad Azizul Haque",
            "FCPS, MASP - Comilla Medical Center",
            "assets/images/doctor1.jpg",
            KBluecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 02",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor2.png",
            KYellowcolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 03",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor3.png",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 04",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor1.jpg",
            KWhitecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 05",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor2.png",
            KBluecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 06",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor3.png",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 07",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor1.jpg",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 08",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor3.png",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 09",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor2.png",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            "Doctor 10",
            "Doctor Speciality - Hospital name",
            "assets/images/doctor1.jpg",
            KOrangecolor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }*/
}
