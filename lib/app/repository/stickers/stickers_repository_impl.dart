import 'dart:developer';

import 'package:dart_week_worldcup_album/app/core/exceptions/repository_exception.dart';
import 'package:dart_week_worldcup_album/app/core/rest/custom_dio.dart';
import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';
import 'package:dart_week_worldcup_album/app/models/register_sticker_model.dart';
import 'package:dart_week_worldcup_album/app/models/sticker_model.dart';
import 'package:dart_week_worldcup_album/app/repository/stickers/stickers_repository.dart';
import 'package:dio/dio.dart';

class StickersRepositoryImpl implements StickersRepository {
  final CustomDio dio;

  StickersRepositoryImpl({required this.dio});

  @override
  Future<List<GroupsStickersModel>> getMyAlbum() async {
    try {
      final result = await dio.auth().get('/api/countries');
      return result.data
          .map<GroupsStickersModel>((g) => GroupsStickersModel.fromMap(g))
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar album do usuario', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar álbum do usuário');
    }
  }

  @override
  Future<StickerModel?> findStickerByCode(
      String stickerCode, String stickerNumber) async {
    try {
      final result = await dio.auth().get(
        '/api/sticker-search',
        queryParameters: {
          'sticker_code': stickerCode,
          'sticker_number': stickerNumber,
        },
      );

      return StickerModel.fromMap(result.data);
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 404) {
        return null;
      }

      log('Erro ao buscar figurinha', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar figurinha');
    }
  }

  @override
  Future<StickerModel> create(RegisterStickerModel registerStickerModel) async {
    try {
      final body = FormData.fromMap({
        ...registerStickerModel.toMap(),
        'sticker_image_upload': '',
      });
      final result = await dio.auth().post('/api/sticker', data: body);
      return StickerModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao cadastrar figurinha no album', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao cadastrar figurinha no album');
    }
  }

  @override
  Future<void> registerUserSticker(int stickerId, int amount) async {
    try {
      await dio.auth().post('/api/user/sticker', data: {
        'id_sticker': stickerId,
        'amount': amount,
      });
    } on DioError catch (e, s) {
      log('Erro ao adicionar figurinha no album do usuario',
          error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao adicionar figurinha no album do usuario');
    }
  }

  @override
  Future<void> updateUserSticker(int stickerId, int amount) async {
    try {
      await dio.auth().put('/api/user/sticker', data: {
        'id_sticker': stickerId,
        'amount': amount,
      });
    } on DioError catch (e, s) {
      log('Erro ao adicionar figurinha no album do usuario',
          error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao adicionar figurinha no album do usuario');
    }
  }
}
