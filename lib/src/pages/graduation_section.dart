import 'package:flutter/material.dart';
import 'package:portfolio/src/components/utils.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

// ignore: must_be_immutable
class GraduationSection extends StatefulWidget {
  const GraduationSection({super.key});

  @override
  State<GraduationSection> createState() => _GraduationSectionState();
}

class _GraduationSectionState extends State<GraduationSection> {
  EdgeInsets blockMargin = const EdgeInsets.fromLTRB(10, 0, 10, 32);

  Color border = const Color(0x20000000);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageNotifierController>(
      builder: (context, notifier, child) {
        return MaxWidthBox(
          maxWidth: 1200,
          child: Container(
            width: double.infinity,
         //  height: Utils.islargerThanHeight(context),
         constraints: BoxConstraints(
            minHeight: Utils.islargerThanHeight(context),
          ),
            margin: blockMargin,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notifier.localizedStrings['background'] ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notifier.localizedStrings['background_description'] ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
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
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  columnPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  columnSpacing: 30,
                  rowSpacing: 30,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFlex: 1,
                      rowFit: FlexFit.tight,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: buildMaterialIconCircle(
                                "assets/images/graduation.png", 100),
                          ),
                          Text('2007-2010',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(notifier.localizedStrings['campusPP'] ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(notifier.localizedStrings['bacharel'] ?? '',
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                                notifier.localizedStrings[
                                        'description_bacharel'] ??
                                    '',
                                style: Theme.of(context).textTheme.bodyMedium,
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: buildMaterialIconCircle(
                                "assets/images/especialization.png", 100),
                          ),
                          Text('2011-2012',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(notifier.localizedStrings['campusUEL'] ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              notifier.localizedStrings['specialization'] ?? '',
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                                notifier.localizedStrings[
                                        'description_specialization'] ??
                                    '',
                                style: Theme.of(context).textTheme.bodyMedium,
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: buildMaterialIconCircle(
                                "assets/images/master.png", 100),
                          ),
                          Text(
                            '2020-2024',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(notifier.localizedStrings['campusUFMS'] ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(notifier.localizedStrings['master'] ?? '',
                              style: Theme.of(context).textTheme.titleSmall,
                              textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                                notifier.localizedStrings[
                                        'description_master'] ??
                                    '',
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildMaterialIconCircle(String imagePath, double size) {
    return WidgetAnimator(
        incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
          duration: const Duration(seconds: 5),
          delay: const Duration(milliseconds: 100),
          curve: Curves.bounceOut,
        ),
        child: InkWell(
          onHover: (value) {},
          child: SizedBox(
            width: size,
            height: size,
            child: Card(
              color: Colors.black54,
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    fit: BoxFit.contain,
                    width: size * 0.4,
                    height: size * 0.4,
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
