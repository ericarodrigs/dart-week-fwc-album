import 'dart:developer';

import 'package:dart_week_worldcup_album/app/core/exceptions/repository_exception.dart';
import 'package:dart_week_worldcup_album/app/core/rest/custom_dio.dart';
import 'package:dart_week_worldcup_album/app/models/register_user_model.dart';
import 'package:dart_week_worldcup_album/app/repository/auth/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {

  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
        '/api/register',
        data: registerModel.toMap(),
      );
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar usuário');
    }
  }

}