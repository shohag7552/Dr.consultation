import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/onboarding_screens.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      home: const Onboardingscreen(),
    );
  }
}
