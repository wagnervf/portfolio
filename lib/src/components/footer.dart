
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).isMobile
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Image.asset("assets/images/flutter_logo_mono.png",
                  height: 100, fit: BoxFit.contain),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            columnFit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: const TextStyle(
                        fontSize: 14, color: Colors.white, height: 2),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            },
                          text: "@wagnervf"),
                      const TextSpan(text: "  •  "),
                    
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            },
                          text: DateTime.now().year.toString()),
                      
                     
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      style: TextStyle(
                          fontSize: 14, color: Colors.white, height: 1),
                      children: [
                        TextSpan(text: '\n'),
                        TextSpan(
                            text:
                                "Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.",
                            style: TextStyle(
                                fontSize: 10, color: Colors.white)),
                        TextSpan(text: '\n'),
                        TextSpan(text: '\n'),
                        TextSpan(text: '\n'),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<bool> openUrl(String url, {bool newWindow = false}) async {
  try {
    if (await canLaunchUrl(Uri.parse(url))) {
      return await launchUrl(
        Uri.parse(url),
      );
    } else {
      debugPrint("Could not launch $url");
      return false;
    }
  } catch (e) {
    debugPrint("Could not launch $url");
    return false;
  }
}

}