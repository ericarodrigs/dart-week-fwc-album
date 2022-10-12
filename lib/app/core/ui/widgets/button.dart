import 'package:dart_week_worldcup_album/app/core/ui/styles/button_styles.dart';
import 'package:dart_week_worldcup_album/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final ButtonStyle style;
  final TextStyle labelStyle;
  final String label;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final bool outlined;

  const Button(
      {super.key,
      required this.style,
      required this.labelStyle,
      required this.label,
      this.width,
      this.height,
      this.onPressed,
      this.outlined = false});

  Button.primary(
      {super.key, required this.label, this.width, this.height, this.onPressed})
      : style = ButtonStyles.i.primaryButton,
        labelStyle = TextStyles.i.textSecondaryFontExtraBold,
        outlined = false;

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: labelStyle,
      overflow: TextOverflow.ellipsis,
    );

    return SizedBox(
      width: width,
      height: height,
      child: outlined
          ? OutlinedButton(
          onPressed: onPressed,
          style: style,
          child: labelText)
          : ElevatedButton(
          onPressed: onPressed,
          style: style,
          child: labelText),
    );
  }
}
