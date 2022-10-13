import 'package:dart_week_worldcup_album/app/models/register_user_model.dart';

abstract class AuthRepository {
  Future<void> register(RegisterUserModel registerModel);
  Future<String> login({required String email, required String password});
  Future<void> logout();
}