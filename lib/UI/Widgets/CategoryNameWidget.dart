import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ContainerWidget.dart';
class CategoryNameWidget extends StatefulWidget {
 // const CategoryNameWidget({Key? key}) : super(key: key);

  @override
  _CategoryNameWidgetState createState() => _CategoryNameWidgetState();
}

class _CategoryNameWidgetState extends State<CategoryNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: ContainerWidget(radius: 5,width: 340.w,height: 115,)),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 38,top: 17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note Title",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF111111),
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard   dummy text ever since the 1500s",
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Quicksand',
                        color: Color(0xFFA5A5A5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: IconButton(

                    iconSize: 24,
                    icon: Icon(Icons.check_circle), onPressed: (){})),
          ],
        ),

      ],
    );
  }
}
