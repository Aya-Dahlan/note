import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/ButtonWidget.dart';
import 'package:note/UI/Widgets/ContainerWidget.dart';
import 'package:note/UI/Widgets/TextFieldWidget.dart';

class SignUpScreen extends StatefulWidget {
  //const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            padding: const EdgeInsets.only(left:23 ,top: 22),
            child: IconButton(icon: Icon(
                Icons.arrow_back_ios,
            color: Colors.black,
            ), onPressed: (){}),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27, top: 90),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w900,
                      fontSize: 30.sp,
                      color: Color(0xFF23203F),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Text(
                    "Create an account",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: Color(0xFF716F87),
                    ),
                  ),
                  SizedBox(height: 53.h),
                  Stack(
                      children: [

                    ContainerWidget(width: 323.w, height: 351.h,radius: 10,),
                    Column(

                      children: [
                        TextFieldWidget('First name'),
                        SizedBox(height: 10),
                        TextFieldWidget('Last name'),
                        SizedBox(height: 10),
                        TextFieldWidget('Email'),
                        SizedBox(height: 10),
                        TextFieldWidget('Phone'),
                        SizedBox(height: 10),
                        TextFieldWidget('Password'),
                      ],
                    ),


                  ]),

                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: ButtonWidget('Sign Up',(){  Navigator.pushNamed(context, '/Categories_screen');}),
                  ),
                  SizedBox(height: 10),

                ],
              ),
            ),
          )
        ]),
      ),
    );
  }}

  signIn(){}