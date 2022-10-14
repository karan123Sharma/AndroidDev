// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:fitpocket/mainpage.dart';
import 'package:fitpocket/pages/details/details.dart';
import 'package:fitpocket/pages/home/home.dart';
import 'package:fitpocket/screen/onboarding/screen_one.dart';
import 'package:fitpocket/screens/SpashPage.dart';
import 'package:fitpocket/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitPocket',
      theme: ThemeData(
        fontFamily: 'SFPro',
        textTheme: TextTheme(headline1: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ))
      ),
      routes: {
        '/':(context) =>OnboardingScreenOne(),
        '/details':(context)=>Details(),
        '/home':(context)=>Homepage(),
        '/login':(context)=>login_page(),
        '/CHECK':(context)=>check(),
    },
     initialRoute: '/',
    );
  }
}
//
// class SpashPage extends StatelessWidget {
//   const SpashPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         body:
//         Center(
//           child: Container(
//             color: Colors.black,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Align(
//                     alignment: Alignment.center,
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => OpeningPage1()
//                             )
//                         );
//                       },
//                       child: Image.asset('assets/Goodlogoremovebgpreview1.png'),
//                     )
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }
//
