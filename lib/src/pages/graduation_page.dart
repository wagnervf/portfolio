import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: must_be_immutable
class GraduationPage extends StatefulWidget {
  const GraduationPage({super.key});

  @override
  State<GraduationPage> createState() => _GraduationPageState();
}

class _GraduationPageState extends State<GraduationPage> {
  EdgeInsets blockMargin = const EdgeInsets.fromLTRB(10, 0, 10, 32);

  Color border = const Color(0x20000000);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageNotifierController>(
      builder: (context, notifier, child) {
        return Container(
          width: double.infinity,
          margin: blockMargin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  notifier.localizedStrings['background'] ?? '',
                  style: subTitleLightTextStyle,
                ),
              ),
              ResponsiveRowColumn(
                layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.center,
                columnMainAxisSize: MainAxisSize.min,
                rowPadding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
                columnPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                columnSpacing: 50,
                rowSpacing: 50,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: buildMaterialIconCircle(
                              "assets/images/graduation.png", 100),
                        ),
                        Text('2007-2010',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelMedium),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          notifier.localizedStrings['campusPP'] ?? '',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Bachelor's degree in computer science",
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center),
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                              "The course covers a broad field of computing such as systems development, computer networks, algorithms, hardware and other aspects of technology.",
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: buildMaterialIconCircle(
                              "assets/images/especialization.png", 100),
                        ),
                        Text('2011-2012',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelMedium),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          notifier.localizedStrings['campusUEL'] ?? '',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Specialization in Computer Networks and Data Communications in 2012",
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center),
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                              "In the specialization, I sought to improve my knowledge of computer networks and data communication.",
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowFit: FlexFit.tight,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: buildMaterialIconCircle(
                              "assets/images/master.png", 100),
                        ),
                        Text(
                          '2020-2024',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(notifier.localizedStrings['campusUFMS'] ?? '',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Master of Science in Applied Computing 2023",
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center),
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                              "In my Master's degree I changed areas completely and focused entirely on development, working with a few different frameworks and languages such as Vue.js and Node.js.",
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildMaterialIconCircle(String imagePath, double size) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFE7F8FF),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
          width: size * 0.4,
          height: size * 0.4,
        ),
      ),
    );
  }
}
