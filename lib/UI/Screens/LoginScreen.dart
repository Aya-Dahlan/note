import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/ButtonWidget.dart';
import 'package:note/UI/Widgets/ContainerWidget.dart';
import 'package:note/UI/Widgets/TextFieldWidget.dart';
import 'package:note/forms/helpers/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            "images/Group 34.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 27, top: 104),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 30.sp,
                    color: Color(0xFF23203F),
                  ),
                ),
                SizedBox(height: 9.h),
                Text(
                  "Login to start using app,",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w300,
                    fontSize: 18.sp,
                    color: Color(0xFF716F87),
                  ),
                ),
                SizedBox(height: 81.h),
                Stack(children: [
                  ContainerWidget(width: 323.w, height: 180.h,radius: 10,),
                  Column(
                    children: [
                      TextFieldWidget('Email'),
                      SizedBox(height: 30),
                      TextFieldWidget('Password'),
                    ],
                  ),


                ]),

                SizedBox(height: 30),
                ButtonWidget('Login', ()async{await login();}),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF9391A4),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp_screen');
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontSize: 18.sp,
                          color: Color(0xFF23203F),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ]),
      ),
    );


    }

  Future login() async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    await sharedPreferences.setBool("logged_in",true);

    Navigator.pushReplacementNamed((context), "/Categories_screen");
  }
}
