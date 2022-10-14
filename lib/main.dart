import 'package:dart_week_worldcup_album/app/core/config/env/env.dart';
import 'package:dart_week_worldcup_album/app/fwc_album_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(FwcAlbumApp());
}
