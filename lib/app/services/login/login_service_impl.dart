import 'package:dart_week_worldcup_album/app/repository/auth/auth_repository.dart';
import 'package:dart_week_worldcup_album/app/services/login/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginServiceImpl implements LoginService {

  final AuthRepository authRepository;

  LoginServiceImpl({required this.authRepository});

  @override
  Future<void> execute({required String email, required String password}) async  {
    final accessToken = await authRepository.login(email: email, password: password);
    final sp = await SharedPreferences.getInstance();
    sp.setString('accessToken', accessToken);
  }

}