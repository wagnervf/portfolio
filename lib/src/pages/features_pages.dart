import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: must_be_immutable
class Features extends StatelessWidget {
  Features({super.key});

  EdgeInsets blockMargin = const EdgeInsets.fromLTRB(10, 0, 10, 32);
  Color border = const Color(0x20000000);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        columnPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                      "assets/images/icon_development.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Fast Development",
                      textAlign: TextAlign.center),
                ),
                const Text(
                    "Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.",
                    textAlign: TextAlign.center),
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
                  child:
                      buildMaterialIconCircle("assets/images/icon_ui.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Expressive and Flexible UI",
                      textAlign: TextAlign.center),
                ),
                const Text(
                    "Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.",
                    textAlign: TextAlign.center),
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
                      "assets/images/icon_performance.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child:
                      Text("Native Performance", textAlign: TextAlign.center),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts, and your Flutter code is compiled to native ARM machine code using "),
                      TextSpan(
                        text: "Dart's native compilers",
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
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
          width: size * 0.5,
          height: size * 0.5,
        ),
      ),
    );
  }
}
