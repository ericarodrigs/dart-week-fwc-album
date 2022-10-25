import 'package:dart_week_worldcup_album/app/core/mvp/fwc_presenter.dart';
import 'package:dart_week_worldcup_album/app/models/user_sticker_model.dart';
import 'package:dart_week_worldcup_album/app/pages/sticker_detail/view/sticker_detail_view.dart';

abstract class StickerDetailPresenter extends FwcPresenter<StickerDetailView> {

  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  });
}