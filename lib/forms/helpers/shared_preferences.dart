import 'package:shared_preferences/shared_preferences.dart';

class SpHelper{
  SpHelper._();
  static SpHelper spHelper=SpHelper._();
  SharedPreferences sharedPreferences;
  initSharedPreferences()async{
    sharedPreferences= await SharedPreferences.getInstance();
  }

  bool isLoggedin(){
    return sharedPreferences.getBool("logged_in")?? false;
  }
}