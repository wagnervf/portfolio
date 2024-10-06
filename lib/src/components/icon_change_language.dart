import 'package:flutter/material.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:provider/provider.dart';

class IconChangeLanguage extends StatelessWidget {
  const IconChangeLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          IconButton(
            //tooltip: 'Translate to English',
            icon: Image.asset(
              'assets/images/eua.png',
              height: 24,
              fit: BoxFit.cover,
            ),
            onPressed: () {
              Provider.of<LanguageNotifierController>(context, listen: false)
                  .toggleTranslate(const Locale('en'));
            },
          ),
          IconButton(
            tooltip: 'Traduzir para o Português',
            icon: Image.asset(
              'assets/images/brasil.png',
              height: 24,
            ),
            onPressed: () {
              Provider.of<LanguageNotifierController>(context, listen: false)
                  .toggleTranslate(const Locale('pt'));
            },
          ),
        ],
      ),
    );
  }
}
