import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNamekey = "USERNAMEKEY";
  static String userEamilkey = "USEREMAILKEY";


   static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }
   static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNamekey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEamilkey, userEmail);
  }

static Future<bool?>getUserLoggedInStatus () async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getBool(userLoggedInKey);
}

}