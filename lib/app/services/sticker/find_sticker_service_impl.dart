import 'package:dart_week_worldcup_album/app/models/register_sticker_model.dart';
import 'package:dart_week_worldcup_album/app/models/sticker_model.dart';
import 'package:dart_week_worldcup_album/app/repository/stickers/stickers_repository.dart';
import 'package:dart_week_worldcup_album/app/services/sticker/find_sticker_service.dart';

class FindStickerServiceImpl implements FindStickerService {
  final StickersRepository stickersRepository;

  FindStickerServiceImpl({required this.stickersRepository});

  @override
  Future<StickerModel> execute(String countryCode, String stickerNumber) async {
      var sticker = await stickersRepository.findStickerByCode(
          countryCode, stickerNumber);
      if (sticker == null) {
        final registerSticker = RegisterStickerModel(
            name: '',
            stickerCode: countryCode,
            stickerNumber: stickerNumber,
        );
        sticker = await stickersRepository.create(registerSticker);
      }
      return sticker;
  }
}
