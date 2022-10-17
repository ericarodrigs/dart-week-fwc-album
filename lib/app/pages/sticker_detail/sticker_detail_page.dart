import 'package:dart_week_worldcup_album/app/core/ui/styles/button_styles.dart';
import 'package:dart_week_worldcup_album/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_worldcup_album/app/core/ui/widgets/button.dart';
import 'package:dart_week_worldcup_album/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class StickerDetailPage extends StatefulWidget {
  const StickerDetailPage({super.key});

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe Figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/sticker.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'BRA 17',
                      style: context.textStyles.textPrimaryFontBold
                          .copyWith(fontSize: 22),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(icon: Icons.remove, onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '1',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(icon: Icons.add, onPressed: () {}),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Brasil',
                  style: context.textStyles.textPrimaryFontRegular,
                ),
              ),
              Button.primary(
                label: 'Adicionar figurinha',
                onPressed: () {},
                width: MediaQuery.of(context).size.width * .9,
              ),
              Button(
                onPressed: () {},
                label: 'Excluir figurinha',
                outlined: true,
                style: context.buttonStyles.primaryOutlinedButton,
                labelStyle: context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                width: MediaQuery.of(context).size.width * .9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
