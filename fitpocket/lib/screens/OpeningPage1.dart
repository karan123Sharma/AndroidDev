import 'package:fitpocket/screens/OPeningPage2.dart';
import 'package:flutter/material.dart';
class OpeningPage1 extends StatelessWidget {
  const OpeningPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              child: Column(
                children:[
                  Container(
                    child: Stack(
                      children:[Container(
                        width: 375,
                        height: 460,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xc9000000), Color(0x00000000)], ),
                        ),
                      ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 417,
                              height: 515,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => OpeningPage2()
                                        )
                                    );
                                  },
                                  child: Image.asset('assets/img_1.png'),
                                )
                            ),
                          ),
                        ),],
                    ),
                  ), const SizedBox(height: 62),
                  const Text("MEET YOUR COACH,\nSTART YOUR JOURNEY",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily:'SFPro',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}