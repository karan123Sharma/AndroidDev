import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
       resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white,
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h* 0.8 ,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/signup.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
     child: SingleChildScrollView(
       child: Column(
         children: [
           SizedBox(height: h*0.5),
           const CircleAvatar(
             radius: 50,
           backgroundImage: AssetImage('assets/profile1.png'),),
           const SizedBox(height: 50,),
         ],
   ),
     ),),
            const SizedBox(height: 40,),
            Container(
              child: TextField(
                  onChanged: (value) {
                    email = value;
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Email ID ",
                      prefixIcon: Icon(Icons.email ,color: Colors.pink,),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)
                      )
                  )
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              child: TextField(
                  onChanged: (value) {
                    password = value;
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                      prefixIcon: Icon(Icons.password_outlined,color: Colors.pink,),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)
                      )
                  )
              ),
            ),
            const SizedBox(height: 10,),
            const SizedBox(height: 10,),
            const SizedBox(height: 35,),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/login');
          },
          child: Container(
            width: w*0.5,
            height:h*0.13 ,
            decoration:  BoxDecoration(borderRadius: BorderRadius.circular(30), image: const DecorationImage(image: AssetImage("assets/img_9.png"), fit: BoxFit.cover
                        )
                    ),child: Center(
                    child: Text("Sign Up",style:
                    TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.bold),),
                  ),
                ),
        ),

            const SizedBox(height: 35,),
            const SizedBox(height: 35,),

  ],
        ),
        ),
    );
  }
}
