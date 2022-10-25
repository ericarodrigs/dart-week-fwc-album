import 'dart:convert';

class UserStickerModel {
  final int id;
  final int idUser;
  final int idSticker;
  final int duplicateStickers;
  final String stickerCode;
  final String stickerNumber;

  UserStickerModel({
    required this.id,
    required this.idUser,
    required this.idSticker,
    required this.duplicateStickers,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'id_user': idUser,
      'id_sticker': idSticker,
      'duplicate_stickers': duplicateStickers,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory UserStickerModel.fromMap(Map<String, dynamic> map) {
    return UserStickerModel(
      id: map['id']?.toInt() ?? 0,
      idUser: map['id_user']?.toInt() ?? 0,
      idSticker: map['id_sticker']?.toInt() ?? 0,
      duplicateStickers: map['duplicate_stickers']?.toInt() ?? 0,
      stickerCode: map['sticker_code'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserStickerModel.fromJson(String source) =>
      UserStickerModel.fromMap(json.decode(source));
}
