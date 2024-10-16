import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
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
   // bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      height: MediaQuery.of(context).size.height,
     // color: Colors.grey[100],
      width: double.infinity,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        columnPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        columnSpacing: 0,
        rowSpacing: 0,
        children: [
           const ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: InfiniteIconList(),
          ),
        ],
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

    // Definindo parâmetros do grid
    double itemHeight = 80.0;
    double itemSpacing = 8.0;
    int itemCount = noColorIcons.length;
    int crossAxisCount = (itemCount / 2).ceil(); // Número de colunas

    // Calculando a altura do GridView
    double gridHeight = (itemHeight * (itemCount / crossAxisCount).ceil()) +
        (itemSpacing * ((itemCount / crossAxisCount).ceil() - 1));

    return Container(
      margin: EdgeInsets.zero,
      width: double.infinity,
      padding: isMobile ? const EdgeInsets.all(5) : const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer<LanguageNotifierController>(
            builder: (context, notifier, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      notifier.localizedStrings['mySkill'] ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        notifier.localizedStrings['skillDescription'] ?? '',
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: isMobile
                            ? Theme.of(context).textTheme.bodyMedium
                            : Theme.of(context).textTheme.bodyLarge,
                      ),
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

                  //   SizedBox(
                  //     width: 40,
                  //     height: 40,
                  //     child: Container(
                  //       padding: const EdgeInsets.all(
                  //           4.0), // Espaçamento entre a imagem e a borda
                  //       decoration: BoxDecoration(
                  //         border: Border.all(
                  //           color: Colors.grey, // Cor da borda
                  //           width: 1.0, // Largura da borda
                  //         ),
                  //         borderRadius: BorderRadius.circular(
                  //             50), // Bordas arredondadas (opcional)
                  //       ),
                  //       child: Center(
                  //         child: Image.asset(
                  //           noColorIcons[index].path!,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
