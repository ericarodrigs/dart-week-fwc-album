import 'dart:developer';

import 'package:dart_week_worldcup_album/app/core/exceptions/unauthorized_exception.dart';
import 'package:dart_week_worldcup_album/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:dart_week_worldcup_album/app/pages/auth/login/view/login_view.dart';
import 'package:dart_week_worldcup_album/app/services/login/login_service.dart';

class LoginPresenterImpl implements LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;

  LoginPresenterImpl({required this.loginService});

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.success();
    } on UnauthorizedException {
      _view.error('Usuário ou senha inválidos');
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _view.error('Erro ao realizar login');
    }
  }

  @override
  set view(view) => _view = view;

}