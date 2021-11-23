import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/CategoryNameWidget.dart';

class CategoryNameScreen extends StatefulWidget {
 // const CategoryNameScreen({Key? key}) : super(key: key);

  @override
  _CategoryNameScreenState createState() => _CategoryNameScreenState();
}

class _CategoryNameScreenState extends State<CategoryNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23,top: 55),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
                SizedBox(width: 48.w),
                Text(
                  "Category Name",

                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Quicksand',
                    color: Color(0xFF474559),

                  ),
                ),
                SizedBox(width: 55.w),
                IconButton(icon: Icon(Icons.add_circle), onPressed: (){}),
              ],

            ),

          ) ,
          SizedBox(height: 25.h),
          CategoryNameWidget(),
        ],
      ),

    );
  }
}