import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  //const TextFieldWidget({Key? key}) : super(key: key);
  String hintText;
  TextFieldWidget(this.hintText);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 46,top: 5),
      child: TextField(
        obscureText: widget.hintText=='Password'?true: false,
        style: TextStyle(
          fontSize: 22.sp,
          fontFamily: 'Roboto',
          color: Color(0xFF23203F),
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 22.sp,
            color: Color(0xFF9391A4),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
