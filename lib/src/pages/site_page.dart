import 'package:portfolio/src/components/circle_animation.dart';
import 'package:portfolio/src/components/icon_change_theme.dart';
import 'package:portfolio/src/pages/about_section.dart';
import 'package:portfolio/src/pages/home_section.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/iam_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';


class SitePage extends StatefulWidget {
  const SitePage({super.key});

  @override
  _SitePageState createState() => _SitePageState();
}

class _SitePageState extends State<SitePage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final List<String> _sections = ['Home', 'Sobre'];
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            IconChangeTheme(),
            Text('W.F'),
          ],
        ),
        leading: isDesktop ? null : IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() {
              _isMenuOpen = !_isMenuOpen;
            });
          },
        ),
        actions: isDesktop ? _buildMenuItems() : null,
      ),
      drawer: !isDesktop && _isMenuOpen ? _buildDrawer() : null,
      body: ScrollablePositionedList.builder(
        itemCount: _sections.length,
        itemScrollController: _scrollController,
        itemBuilder: (context, index) {
          return _buildSection(index, isDesktop);
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

  // Menu em modo mobile (Drawer)
  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: _sections.map((section) {
          return ListTile(
            title: Text(section),
            onTap: () {
              _scrollToSection(_sections.indexOf(section));
              setState(() {
                _isMenuOpen = false;
              });
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }

  // Função para rolar até a secção específica
  void _scrollToSection(int index) {
    _scrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Construção das secções
  Widget _buildSection(int index, bool isDesktop) {
    switch (index) {
      case 0:
        return isDesktop
            ? const Row(
                children: [
                  Expanded(child: IamSection()),
                  Expanded(child: CircleAnimation()), // Simulando duas colunas
                ],
              )
            : const Column(
                children: [
                  IamSection(),
                  SizedBox(height: 16),
                  CircleAnimation(),
                ],
              );
      case 1:
        return isDesktop
            ? const Row(
                children: [
                  Expanded(child: AboutSection()),
                  Expanded(child: AboutSection()),
                ],
              )
            : const Column(
                children: [
                  AboutSection(),
                  SizedBox(height: 16),
                  AboutSection(),
                ],
              );
      default:
        return Container();
    }
  }
}
