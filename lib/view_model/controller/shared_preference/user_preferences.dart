// import 'package:pmt/models/user_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class UserPreferences {
//   Future<bool> saveUser(UserModel userModel) async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     sp.setString('token', userModel.toString());
//     sp.setBool('isLoggedIn', userModel.success!);

//     return true;
//   }

//   Future<UserModel> getUser() async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     String? token = sp.getString('token');
//     bool? isLoggedIn = sp.getBool('isLoggedIn');

//     return UserModel(accessToken: token, success: isLoggedIn);
//   }

//   Future<bool> removeUser() async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     sp.clear();
//     return true;
//   }
// }
