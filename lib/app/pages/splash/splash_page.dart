import 'package:dart_week_worldcup_album/app/core/styles/button_styles.dart';
import 'package:dart_week_worldcup_album/app/core/styles/colors_app.dart';
import 'package:dart_week_worldcup_album/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyles.i.primaryButton,
            child: const Text('Salvar'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyles.i.primaryOutlinedButton,
            child: const Text('Salvar'),
          ),
          const TextField(),
        ],
      ),
    );
  }
}
