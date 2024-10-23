import 'package:flutter/material.dart';
import 'package:portfolio/src/components/utils.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageNotifierController>(
      builder: (context, notifier, child) {
        return MaxWidthBox(
        maxWidth: 1200,
          child: Container(
           //height: Utils.islargerThanHeight(context),
           constraints: BoxConstraints(
            minHeight: Utils.islargerThanHeight(context),
          ),
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border.symmetric(horizontal:BorderSide(  color: Colors.grey))),
            child: ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              columnMainAxisSize: MainAxisSize.min,
              rowPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              columnPadding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              columnSpacing: 20,
              rowSpacing: 20,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 5,
                  columnOrder: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 24, 25, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Text(
                             notifier.localizedStrings['courses'] ?? '',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            children:  [
                              TextSpan(
                                  text: notifier.localizedStrings['description_courses'] ?? '',),
                              const TextSpan(text: "\n\n"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                    rowFlex: 5,
                    columnOrder: 2,
                    child: Center(
                      child: Image.asset("assets/images/cursos.png",
                          width: 450, fit: BoxFit.scaleDown),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

 
}
