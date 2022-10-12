import 'package:dart_week_worldcup_album/app/core/ui/helpers/loader.dart';
import 'package:dart_week_worldcup_album/app/pages/splash/splash_page.dart';
import 'package:dart_week_worldcup_album/app/pages/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {

  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }
  @override
  void logged(bool isLogged) {
    hideLoader();
    if (isLogged) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil('/auth/login', (route) => false);
    }
  }
}
