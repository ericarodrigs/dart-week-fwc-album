import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';
import 'package:dart_week_worldcup_album/app/models/register_sticker_model.dart';
import 'package:dart_week_worldcup_album/app/models/sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickersModel>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(String stickerCode, String stickerNumber);
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);
}