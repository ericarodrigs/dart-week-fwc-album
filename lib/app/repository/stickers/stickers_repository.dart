import 'package:dart_week_worldcup_album/app/models/groups_stickers_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickersModel>> getMyAlbum();
}