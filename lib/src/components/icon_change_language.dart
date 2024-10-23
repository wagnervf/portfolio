import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:provider/provider.dart';

class IconChangeLanguage extends StatelessWidget {
  const IconChangeLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
                                                    return Consumer<LanguageNotifierController>(
                                                        builder: (context, notifier, child) {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            IconButton(
              tooltip: 'Translate to English',
              icon: SvgPicture.asset(
                notifier.language == const Locale('en')
                    ? "assets/images/eua1.svg"
                    : "assets/images/eua2.svg",
                fit: BoxFit.fitHeight,
                width: 50,
                height: 35,
              ),
              onPressed: () {
                Provider.of<LanguageNotifierController>(context, listen: false)
                    .toggleTranslate(const Locale('en'));
              },
            ),
            IconButton(
              tooltip: 'Traduzir para o Português',
              icon: SvgPicture.asset(
                notifier.language == const Locale('pt')
                    ? 'assets/images/br1.svg'
                    : 'assets/images/br2.svg',
                width: 35,
                height: 35,
              ),
              onPressed: () {
                Provider.of<LanguageNotifierController>(context, listen: false)
                    .toggleTranslate(const Locale('pt'));
              },
            ),
          ],
        ),
      );
    });
  }
}
