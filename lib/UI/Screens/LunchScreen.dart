import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/ButtonWidget.dart';
import 'package:note/UI/Widgets/ContainerWidget.dart';
import 'package:note/forms/helpers/shared_preferences.dart';

class LunchScreen extends StatefulWidget {
  // const LunchScreen({Key? key}) : super(key: key);

  @override
  _LunchScreenState createState() => _LunchScreenState();


}

class _LunchScreenState extends State<LunchScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      if(SpHelper.spHelper.isLoggedin()){
        Navigator.pushReplacementNamed((context),  '/Categories_screen');
      }
      else{
        Navigator.pushReplacementNamed((context),'/Login_screen');
      }
    });
  }

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
          Center(
            child: Image.asset("images/Group 38.png"),
          ),
          Padding(
           padding: EdgeInsets.only(bottom: 20 ,top: 727,left: 95,right: 99),
            child: Text(
                "iOS Course - Notes App V1.0",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ]),
      ),
    );

  }
}
