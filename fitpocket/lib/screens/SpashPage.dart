import 'package:flutter/material.dart';
import 'OpeningPage1.dart';

class SpashPage extends StatelessWidget {
  const SpashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body:
        Center(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OpeningPage1()
                            )
                        );
                      },
                      child: Image.asset('assets/Goodlogoremovebgpreview1.png'),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

