import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/ButtonWidget.dart';
import 'package:note/UI/Widgets/CategoriesWidget.dart';
import 'package:note/UI/Widgets/ContainerWidget.dart';
import 'package:note/UI/Widgets/TextFieldWidget.dart';

class CategoriesScreen extends StatefulWidget {
 // const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 54),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 132),
                      child: Text(
                          "Categories",

                        style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: 'Quicksand',
                          color: Color(0xFF474559),

                        ),
                      ),
                    ),
                    SizedBox(width: 90.w),
                    IconButton(icon: Icon(
                        Icons.settings,
                      size: 23,
                    ), onPressed: (){

                    }),
                  ],
                ),
                 SizedBox(height: 25.h),
                  ],
                ),
          ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CategoriesWidget(),
                        SizedBox(height: 10.h),
                        CategoriesWidget(),
                        SizedBox(height: 10.h),
                        CategoriesWidget(),
                        SizedBox(height: 10.h),
                        CategoriesWidget(),
                        SizedBox(height: 10.h),
                        CategoriesWidget(),
                        SizedBox(height: 10.h),
                     ],
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(left:297 ,top: 21),
                  child: Container(
                    width: 55.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF6A90F2),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: (){
                        Navigator.pushNamed(context,  '/NewCategory_screen');
                      },
                    ),
                  ),

                )

              ],

          ),


    );
  }
}
