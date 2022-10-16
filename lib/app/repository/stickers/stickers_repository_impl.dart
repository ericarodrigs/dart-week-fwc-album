import 'dart:developer';

import 'package:dart_week_worldcup_album/app/core/exceptions/repository_exception.dart';
import 'package:dart_week_worldcup_album/app/core/rest/custom_dio.dart';
import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';
import 'package:dart_week_worldcup_album/app/repository/stickers/stickers_repository.dart';
import 'package:dio/dio.dart';

class StickersRepositoryImpl implements StickersRepository {

  final CustomDio dio;

  StickersRepositoryImpl({required this.dio});

  @override
  Future<List<GroupsStickersModel>> getMyAlbum() async {
    try {
      final result = await dio.auth().get('/api/countries');
      return result.data.map<GroupsStickersModel>((g) => GroupsStickersModel.fromMap(g)).toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar album du usuario', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar álbum do usuário');
    }
  }
}