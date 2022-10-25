import 'package:dart_week_worldcup_album/app/models/sticker_model.dart';
import 'package:dart_week_worldcup_album/app/models/user_sticker_model.dart';
import 'package:dart_week_worldcup_album/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:dart_week_worldcup_album/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:dart_week_worldcup_album/app/services/sticker/find_sticker_service.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;
  final FindStickerService findStickerService;
  UserStickerModel? stickerUser;
  StickerModel? sticker;
  int amount = 0;

  StickerDetailPresenterImpl({required this.findStickerService});

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  Future<void> load(
      {required String countryCode,
      required String stickerNumber,
      required String countryName,
      UserStickerModel? stickerUser}) async {
    this.stickerUser = stickerUser;
    if(stickerUser == null) {
      sticker = await findStickerService.execute(countryCode, stickerNumber);
    }

    bool hasSticker = stickerUser != null;

    if(hasSticker) {
      amount = stickerUser.duplicate + 1;
    }

    _view.screenLoaded(hasSticker, countryCode, stickerNumber, countryName, amount);
  }
}
