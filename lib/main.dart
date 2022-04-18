import 'package:flutter/material.dart';
import 'package:real_version/patient/screens/login_page.dart';
import 'package:real_version/patient/screens/profil_screen.dart';
import 'package:real_version/patient/screens/vaccin_screen.dart';
import 'package:real_version/patient/screens/visit_screen.dart';

import 'docteur/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SearchPatient(),
    );
  }
}
