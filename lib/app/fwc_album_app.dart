import 'package:dart_week_worldcup_album/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_worldcup_album/app/pages/auth/login/login_page.dart';
import 'package:dart_week_worldcup_album/app/pages/home/home_page.dart';
import 'package:dart_week_worldcup_album/app/pages/splash/splash_route.dart';
import 'package:flutter/material.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme ,
      routes: {
        '/': (_) => SplashRoute(),
        '/home': (_) => const HomePage(),
        '/auth/login': (_) => const LoginPage(),
      },
    );
  }
}
