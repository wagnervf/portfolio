import 'package:portfolio/src/components/footer.dart';
import 'package:portfolio/src/components/icon_change_language.dart';
import 'package:portfolio/src/components/icon_change_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/courses_section.dart';
import 'package:portfolio/src/pages/graduation_section.dart';
import 'package:portfolio/src/pages/iam_section.dart';
import 'package:portfolio/src/pages/skills_section.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SitePage extends StatefulWidget {
  const SitePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SitePageState createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final List<String> _sections = ['Home', 'About', 'My Background', 'Courses', 'Footer'];
  //bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Row(
          children: [
            IconChangeTheme(),
            IconChangeLanguage(),
            Text(
              'W.F',
              style: TextStyle(fontSize: 12),
            ),
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
    const Condition.largerThan(
        name: TABLET, value: BoxConstraints(maxWidth: 1280)),
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
        return const IamSection();
      case 1:
        return const SkillsSection();
      case 2:
        return const GraduationSection();
      case 3:
        return const CoursesSection();
      case 4:
        return const Footer();
      default:
        return const SizedBox.shrink();
    }
  }
}
