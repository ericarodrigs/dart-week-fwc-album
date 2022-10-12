import 'package:dart_week_worldcup_album/app/core/styles/colors_app.dart';
import 'package:dart_week_worldcup_album/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
    primary: ColorsApp.i.yellow,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get yellowOutlinedButton => OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    side: BorderSide(color: ColorsApp.i.yellow),
    textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
    primary: ColorsApp.i.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get primaryOutlinedButton => OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    side: BorderSide(color: ColorsApp.i.primary),
    textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );
}

extension ButtonStylesExtension on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i; 
}