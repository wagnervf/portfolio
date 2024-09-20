import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/controllers/theme/controller/theme_notifier_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,     
      child: MaxWidthBox(maxWidth: 1200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .15),
              Text(
                "Hi, I'm Wagner",
                style:
                    isDarkMode(context) ? titleDarkTextStyle : subTitleLightTextStyle,
              ),
              Text(
                "A fullstack Developer",
                style: isDarkMode(context)
                    ? subTitleDarkTextStyle
                    : textLightTextStyle,
              ),
              const SizedBox(height: 40),
              Flexible(
                child: Text(
                  'enjoy solving complex problems. Frequently praised as detail-oriented by my peers, I can be relied upon to help your company achieve its goals by providing sustainable and scalable solutions.',
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 20),
              gitHubAndLinkedin()
            ],
          ),
        ),
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
