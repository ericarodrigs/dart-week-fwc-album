import 'dart:convert';

import 'package:dart_week_worldcup_album/app/models/user_sticker_model.dart';

class GroupsStickersModel {
  final int id;
  final String countryCode;
  final String countryName;
  final int stickersStart;
  final int stickersEnd;
  final List<UserStickerModel> stickers;
  final String flag;

  GroupsStickersModel({
    required this.id,
    required this.countryCode,
    required this.countryName,
    required this.stickersStart,
    required this.stickersEnd,
    required this.stickers,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'country_code': countryCode,
      'country_name': countryName,
      'stickers_start': stickersStart,
      'stickers_end': stickersEnd,
      'stickers': stickers,
      'flag': flag,
    };
  }

  factory GroupsStickersModel.fromMap(Map<String, dynamic> map) {
    return GroupsStickersModel(
      id: map['id']?.toInt() ?? 0,
      countryCode: map['country_code'] ?? '',
      countryName: map['country_name'] ?? '',
      stickersStart: map['stickers_start']?.toInt() ?? 0,
      stickersEnd: map['stickers_end']?.toInt() ?? 0,
      stickers: List<UserStickerModel>.from(
          map['stickers']),
      flag: map['flag'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupsStickersModel.fromJson(String source) =>
      GroupsStickersModel.fromMap(json.decode(source));
}
