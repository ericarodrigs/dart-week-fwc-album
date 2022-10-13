import 'package:dart_week_worldcup_album/app/core/rest/custom_dio.dart';
import 'package:dart_week_worldcup_album/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_worldcup_album/app/pages/auth/login/login_page.dart';
import 'package:dart_week_worldcup_album/app/pages/home/home_page.dart';
import 'package:dart_week_worldcup_album/app/pages/splash/splash_route.dart';
import 'package:dart_week_worldcup_album/app/repository/auth/auth_repository.dart';
import 'package:dart_week_worldcup_album/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme ,
        routes: {
          '/': (_) => SplashRoute(),
          '/home': (_) => const HomePage(),
          '/auth/login': (_) => const LoginPage(),
        },
      ),
    );
  }
}
