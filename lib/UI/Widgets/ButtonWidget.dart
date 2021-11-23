import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatefulWidget {
  //const ButtonWidget({Key? key}) : super(key: key);
  String textButton;
  Function pressed;

  ButtonWidget(this.textButton,this.pressed);
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {




  @override
  Widget build(BuildContext context) {
    return Container(

      width: 315.w,

      height: 53.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Color(0xFFE73D50),
        borderRadius: BorderRadius.circular(80.5),
      ),
      child: ElevatedButton(
        clipBehavior: Clip.antiAlias ,

          onPressed: widget.pressed,


          child: Text(
            widget.textButton,
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              color:Colors.white,
              fontSize: 20.sp,

            ),
          )


      ),
    );

  }


}
