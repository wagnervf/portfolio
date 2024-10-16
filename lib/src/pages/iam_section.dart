import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class IamSection extends StatefulWidget {
  const IamSection({
    super.key,
  });

  @override
  State<IamSection> createState() => _IamSectionState();
}

class _IamSectionState extends State<IamSection> {
  bool isDarkMode(BuildContext context) {
    //return context.read<ThemeNotifierController>().getThemeIsDark();
    return Provider.of<ThemeNotifierController>(context).themeMode ==
        ThemeMode.dark;
  }

  EdgeInsets blockMargin = const EdgeInsets.fromLTRB(10, 0, 10, 32);
  Color border = const Color(0x20000000);

  @override
  Widget build(BuildContext context) {
    bool smallerThan = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
    return Consumer<LanguageNotifierController>(
      builder: (context, notifier, child) {
        return MaxWidthBox(
          maxWidth: 1200,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding:
                smallerThan ? const EdgeInsets.all(15) : const EdgeInsets.only(top: 20),
            child: ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowCrossAxisAlignment: CrossAxisAlignment.start,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              columnMainAxisSize: MainAxisSize.min,
              rowPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              columnPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              columnSpacing: 10,
              rowSpacing: 0,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: iAmWidget(context, notifier),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: imageIAmWidget(context),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  Column iAmWidget(BuildContext context, LanguageNotifierController notifier) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          notifier.localizedStrings['hello'] ?? '',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        //TextAnimator(
        Text(
          notifier.localizedStrings['iam'] ?? '',
          style: Theme.of(context).textTheme.titleLarge,
          // incomingEffect: WidgetTransitionEffects.incomingScaleDown(
          //   duration: const Duration(milliseconds: 600),
          // ),
        ),
        const SizedBox(height: 20),
        textFullStack(notifier),
        const SizedBox(height: 20),
        Flexible(
          child: Text(
             notifier.localizedStrings['myDescription'] ?? '',
            softWrap: true,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(height: 20),
        gitHubAndLinkedin()
      ],
    );
  }

  Text textFullStack(LanguageNotifierController notifier) {
    return Text(
      notifier.localizedStrings['fullstack'] ?? '',
      style: Theme.of(context).textTheme.headlineMedium,
      // incomingEffect: WidgetTransitionEffects(
      //     offset: const Offset(-60, 0),
      //     blur: const Offset(10, 0),
      //     curve: Curves.easeInOut,
      //     duration: const Duration(milliseconds: 400)),
      // outgoingEffect: WidgetTransitionEffects(
      //     offset: const Offset(60, 0),
      //     blur: const Offset(10, 0),
      //     curve: Curves.easeIn,
      //     duration: const Duration(milliseconds: 400)),
      // atRestEffect: WidgetRestingEffects.none(),
      // style: textLightTextStyle,
      // textAlign: TextAlign.center,
      // initialDelay: const Duration(milliseconds: 0),
      // spaceDelay: const Duration(milliseconds: 300),
      // characterDelay: const Duration(milliseconds: 60),
      // maxLines: 3,
    );
  }

  imageIAmWidget(BuildContext context) {
    bool smallerThan = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
    return smallerThan
        ? const SizedBox.shrink()
        : Container(
            // color: Colors.amber,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              'assets/images/codding.png',
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          );
  }

  Row gitHubAndLinkedin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: const FaIcon(

            FontAwesomeIcons.github,
            size: 40,
          ),
          onPressed: () {
            _launchURL('https://github.com/wagnervf');
          },
          tooltip: 'GitHub',
        ),
        const SizedBox(width: 20),
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            size: 40,
          ),
          onPressed: () {
            _launchURL('https://linkedin.com/in/your-profile');
          },
          tooltip: 'LinkedIn',
        ),
      ],
    );
  }

  TextStyle btnStyle() => const TextStyle(
      fontSize: 16, fontFamily: fontFamily, color: Colors.white);

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
