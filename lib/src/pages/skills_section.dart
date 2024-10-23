import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/src/components/utils.dart';
import 'package:portfolio/src/controllers/theme/controller/language_notifier_controller.dart';
import 'package:portfolio/src/models/icon_animation_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SkillsSectionState createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    bool smallerThan = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);

    return MaxWidthBox(
      maxWidth: 1200,
      child: Container(
       // height: Utils.islargerThanHeight(context),
       constraints: BoxConstraints(
            minHeight: Utils.islargerThanHeight(context),
          ),
        width: double.infinity,
        padding: smallerThan
            ? const EdgeInsets.all(10)
            : const EdgeInsets.only(top: 20),
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.center,
          columnMainAxisSize: MainAxisSize.min,
          rowPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          columnPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          columnSpacing: 10,
          rowSpacing: 0,
          children: const [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: InfiniteIconList(),
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
  // ignore: library_private_types_in_public_api
  _InfiniteIconListState createState() => _InfiniteIconListState();
}

class _InfiniteIconListState extends State<InfiniteIconList> {
  List<IconAnimationModel> noColorIcons = IconDataListAllIcons.iconsSvg;

  late InfiniteScrollController _controller = InfiniteScrollController();

  final int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Padding(
      padding: isMobile ? const EdgeInsets.all(5) : const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer<LanguageNotifierController>(
            builder: (context, notifier, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      notifier.localizedStrings['mySkill'] ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      notifier.localizedStrings['skillDescription'] ?? '',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: isMobile
                          ? Theme.of(context).textTheme.bodyMedium
                          : Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment:
                Alignment.center, // Centralizando o GridView no Container
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 160,
                  childAspectRatio: 1,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap:
                    true, // Impede o GridView de ocupar mais espaço que o necessário
                clipBehavior: Clip.antiAlias,
                itemCount: noColorIcons.length,
                itemBuilder: (context, index) {
                  return WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                        duration: Duration(seconds: 1 + index),
                        delay: Duration(milliseconds: 100 + index),
                        curve: Curves.bounceOut,
                      ),
                      child: InkWell(
                        onHover: (value) {},
                        child: SizedBox(
                          width: 160,
                          height: 160,
                          child: Card(
                            color: Colors.black54,
                            margin: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  fit: BoxFit.contain,
                                  width: 140 * 0.5,
                                  height: 140 * 0.5,
                                  noColorIcons[index].path!,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
