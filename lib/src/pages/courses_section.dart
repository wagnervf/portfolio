import 'package:flutter/material.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: must_be_immutable
class CoursesSection extends StatelessWidget {
  CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 32),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0x20000000))),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        columnPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        columnSpacing: 50,
        rowSpacing: 50,
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
                      "Courses focused on development",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: const [
                        TextSpan(
                            text:
                                "The most relevant platforms for development courses I've taken and am currently taking."),
                        TextSpan(text: "\n\n"),
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
    );
  }

  TextStyle bodyTextStyle = const TextStyle(
      fontSize: 16, color: Colors.black87, height: 1.5, fontFamily: "Roboto");
}
