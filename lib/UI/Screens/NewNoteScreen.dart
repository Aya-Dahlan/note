import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Widgets/ButtonWidget.dart';
import 'package:note/UI/Widgets/TextFieldWidget.dart';

class NewNoteScreen extends StatefulWidget {
  // const NewCategoryScreen({Key? key}) : super(key: key);

  @override
  _NewNoteScreenState createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 58),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New Note",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF23203F),

                ),
              ),
              SizedBox(height: 8.h),
              Text("Create note",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF9391A4),

                ),
              ),
              TextFieldWidget("Name"),
              SizedBox(height: 20.h),
              TextFieldWidget("Description"),
              SizedBox(height: 35.h),
              ButtonWidget("Save",(){}),

            ],
          ),
        ],
      ),
    );
  }
}
