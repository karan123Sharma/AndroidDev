import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  final _emailcontroller =TextEditingController();
  final _passwordcontroller =TextEditingController();
  Future signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ SizedBox(height: 10,),
              Text("Hello Again !" ,style: TextStyle(fontFamily: 'SFPro',fontSize: 24,fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Email",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Password",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: signin,
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: 25.0),
                    decoration:  BoxDecoration(
                       color: Colors.purple,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center
                      (
                        child:
                     Text(
                       "Sign In ",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),
                     )),
                  ),
                ),
              )
            ],
          ),
        )
    )
    );
  }
}
