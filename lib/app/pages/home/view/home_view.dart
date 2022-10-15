import 'package:dart_week_worldcup_album/app/models/user_model.dart';

abstract class HomeView {

  void updateUser(UserModel user);
  void error(String message);
  void showLoader();
  void logoutSuccess();
}