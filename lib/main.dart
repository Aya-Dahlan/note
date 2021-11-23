import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/UI/Screens/LoginScreen.dart';
import 'package:note/UI/Screens/SignUpScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'UI/Screens/CategoriesScreen.dart';
import 'UI/Screens/CategoryNameScreen.dart';
import 'UI/Screens/LunchScreen.dart';
import 'UI/Screens/NewCategoryScreen.dart';
import 'UI/Screens/NewNoteScreen.dart';
import 'forms/helpers/shared_preferences.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();

   await SpHelper.spHelper.initSharedPreferences();
runApp(MainApp());


}


class MainApp extends StatefulWidget {
  //const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/Lunch_screen',
          routes: {
            '/Lunch_screen':(context)=>LunchScreen(),
            '/Login_screen':(context)=>LoginScreen(),
            '/SignUp_screen':(context)=>SignUpScreen(),
            '/Categories_screen':(context)=>CategoriesScreen(),
            '/NewCategory_screen':(context)=>NewCategoryScreen(),
            '/CategoryName_screen':(context)=>CategoryNameScreen(),
            '/NewNote_screen':(context)=>NewNoteScreen(),


          },
        ));


  }
}
