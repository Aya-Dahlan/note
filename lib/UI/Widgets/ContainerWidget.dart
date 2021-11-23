import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class  ContainerWidget extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  double width;
  double height;
  Widget child;
  double radius;
  ContainerWidget({this.width, this.height, this.child,this.radius});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],

      ),
      child: child,

    );
  }
}
