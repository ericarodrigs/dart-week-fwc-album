import 'package:dart_week_worldcup_album/app/core/mvp/fwc_presenter.dart';

abstract class SplashPresenter extends FwcPresenter{

  Future<void> checkLogin();
}