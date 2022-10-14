import 'package:dart_week_worldcup_album/app/core/rest/custom_dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            context.get<CustomDio>().auth().get('/api/me');
          },
          child: const Text('Testando auth'),
        ),
      ),
    );
  }
}
