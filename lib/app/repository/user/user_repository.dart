import 'package:dart_week_worldcup_album/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}