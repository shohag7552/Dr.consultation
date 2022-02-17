import 'package:flutter/material.dart';
import 'package:flutter_application_3/constant.dart';

import 'home_screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[

            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/onboarding_illustration.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Android Application For\nDoctor Appointment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: KTitleTextcolor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Choose The Doctor You Want",
                      style: TextStyle(
                        fontSize: 16,
                        color: KTitleTextcolor.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const HomeScreen(),
                          ),
                        );
                      },
                      color: KOrangecolor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: KWhitecolor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
