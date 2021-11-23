import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ContainerWidget.dart';

class CategoriesWidget extends StatefulWidget {
  // const CategoriesWidget({Key? key}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerWidget(

          width: 340.w,
          height: 69.5.h,
          radius: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF6A90F2),
                  radius: 25,
                  child: Text(""),
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aya",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF111111),
                      ),
                    ),
                    Text(
                      "Aya Ali Dahlan",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Quicksand',
                        color: Color(0xFFA5A5A5),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red.shade800,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context,  '/NewCategory_screen');          }),
                ),
                SizedBox(width: 10.w),
                Container(
                  alignment: Alignment.center,
                  width: 20.w,
                  height: 69.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF6A90F2),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)),

                  ),
                  child: IconButton(icon: Icon(Icons.edit,size: 12,color: Colors.white,),onPressed: (){},),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
