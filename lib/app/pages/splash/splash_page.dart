import 'package:dart_week_worldcup_album/app/core/ui/helpers/loader.dart';
import 'package:dart_week_worldcup_album/app/core/ui/helpers/messages.dart';
import 'package:dart_week_worldcup_album/app/core/ui/styles/button_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with Loader, Messages {
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
