import 'package:flutter/material.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/models/icon_animation_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({
    super.key,
  });

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 500,
      color: Colors.grey[100],
      width: double.infinity,
     // padding: const EdgeInsets.symmetric(horizontal: 32),
      child: const MaxWidthBox(maxWidth: 1200,
        child:  Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'My skills',
                    style: subTitleLightTextStyle,
                  ),
                  SizedBox(
                    width: 500,
                    child: Text(
                      'Collaborate on the open source framework, contribute to the package ecosystem on pub.dev, and find help when you need it.',
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: InfiniteIconList()
              
                ),
          ],
        ),
      ),
    );
  }
}

class InfiniteIconList extends StatefulWidget {
  const InfiniteIconList({super.key});

  @override
  _InfiniteIconListState createState() => _InfiniteIconListState();
}

class _InfiniteIconListState extends State<InfiniteIconList> {
  final ScrollController _scrollController = ScrollController();
  List<IconAnimationModel> colorIcons = IconDataListAllIconsHover.iconsSvg;

  @override
  void initState() {
    super.initState();
    _startScrolling();
  }

  void _startScrolling() {
    Future.delayed(const Duration(milliseconds: 100), () {
      _scrollController
          .animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 10),
        curve: Curves.linear,
      )
          .then((_) {
        _scrollController.jumpTo(0); // Volta para o topo
        _startScrolling();
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(   
      controller: _scrollController,
    scrollDirection: Axis.horizontal,
      itemCount: colorIcons.length,
      itemBuilder: (context, index) {
        return Center(
          child: SizedBox(
            width: 80,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                colorIcons[index].path!,
              ),
            ),
          ),
        );
      },
    );
  }
}
