import 'package:portfolio/src/pages/features_pages.dart';
import 'package:portfolio/src/pages/skills_page.dart';
import 'package:portfolio/src/components/icon_change_theme.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/iam_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SitePage extends StatefulWidget {
  const SitePage({super.key});

  @override
  _SitePageState createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final List<String> _sections = ['Home', 'About', 'Profile'];
  //bool _isMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            IconChangeTheme(),
            Text('W.F'),
          ],
        ),
        actions: ResponsiveBreakpoints.of(context).isDesktop
            ? _buildMenuItems()
            : null,
      ),
      body: ScrollablePositionedList.builder(
        itemCount: _sections.length,
        itemScrollController: _scrollController,
        itemBuilder: (context, index) {
          return _buildSection(index);
        },
      ),
    );
  }

  // bool isDarkMode(BuildContext context) {
  //   return context.read<ThemeNotifierController>().getThemeIsDark();
  // }

  // Menu em modo desktop
  List<Widget> _buildMenuItems() {
    return _sections.map((section) {
      return TextButton(
        onPressed: () {
          _scrollToSection(_sections.indexOf(section));
        },
        child: Text(
          section,
          style: const TextStyle(color: Colors.black),
        ),
      );
    }).toList();
  }

  List<Condition<BoxConstraints>> blockWidthConstraints = [
  const Condition.equals(name: MOBILE, value: BoxConstraints(maxWidth: 600)),
  const Condition.equals(name: TABLET, value: BoxConstraints(maxWidth: 700)),
  const Condition.largerThan(name: TABLET, value: BoxConstraints(maxWidth: 1280)),
];

  // Função para rolar até a secção específica
  void _scrollToSection(int index) {
    _scrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Construção das secções
  Widget _buildSection(
    int index,
  ) {
    switch (index) {
      case 0:
        return IamPage();
      //   ResponsiveConstraints(
        //  conditionalConstraints: blockWidthConstraints, child: const IamPage());
            // ResponsiveBreakpoints.of(context).largerThan(TABLET)
            //     ? Stack(
            //         alignment: Alignment.center,
            //         children: [
            //           IamPage(),
            //           Positioned(
            //             bottom: 100,
            //             left: 0,
            //             right: 0,
            //             child: Center(
            //               child: IconButton(
            //                   onPressed: () {},
            //                   icon: const Icon(
            //                     Icons.keyboard_double_arrow_down,
            //                     size: 50,
            //                   )),
            //             ),
            //           ),
            //         ],
            //       )
            //     : Column(
            //         children: [
            //           const IamPage(),
            //           const SizedBox(height: 16),
            //           //HomeGifWidget(),

            //           IconButton(
            //               onPressed: () {},
            //               icon: const Icon(Icons.arrow_circle_down_outlined))
            //         ],
            //       );

      case 1:
        return const SkillsPage();

      case 2:
        return Features();

      default:
        return Container(height: 600, color: Colors.blue[200]);

    }
  }
}
