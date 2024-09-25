import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/models/icon_animation_model.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

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
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      // height: isMobile
      //     ? MediaQuery.of(context).size.height * .8
      //     : MediaQuery.of(context).size.height * .9,
      color: Colors.grey[100],
      width: double.infinity,
      child: MaxWidthBox(
        maxWidth: 1200,
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowCrossAxisAlignment: CrossAxisAlignment.center,
          columnCrossAxisAlignment: CrossAxisAlignment.center,
          columnMainAxisSize: MainAxisSize.min,
          rowPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          columnPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          columnSpacing: 30,
          rowSpacing: 30,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'My skills',
                      style: subTitleLightTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Collaborate on the open source framework, contribute to the package ecosystem on pub.dev, and find help when you need it.',
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: isMobile
                            ? Theme.of(context).textTheme.bodyMedium
                            : Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ResponsiveRowColumnItem(
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
  _InfiniteIconListState createState() => _InfiniteIconListState();
}

class _InfiniteIconListState extends State<InfiniteIconList> {
  List<IconAnimationModel> colorIcons = IconDataListAllIcons.iconsSvg;
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
    int itemCount = colorIcons.length;
    int crossAxisCount = (itemCount / 2).ceil(); // Número de colunas

    // Calculando a altura do GridView
    double gridHeight = (itemHeight * (itemCount / crossAxisCount).ceil()) +
        (itemSpacing * ((itemCount / crossAxisCount).ceil() - 1));

    return Container(
      height: MediaQuery.of(context).size.height * .6,
      padding: isMobile ? const EdgeInsets.all(5) : const EdgeInsets.all(50),
      child: Align(
        alignment: Alignment.center, // Centralizando o GridView no Container
        child: SizedBox(
          height:
              gridHeight + 200, // Altura do GridView calculada dinamicamente
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 80,
              childAspectRatio: 1,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap:
                true, // Impede o GridView de ocupar mais espaço que o necessário
            clipBehavior: Clip.antiAlias,
            itemCount: colorIcons.length,
            itemBuilder: (context, index) {
              return WidgetAnimator(
                incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                  duration: Duration(seconds: 1 + index),
                  delay: Duration(milliseconds: 2750 + index),
                  curve: Curves.bounceOut,
                ),
                child: Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black87,
      ),
      child: Align(
        alignment: Alignment.center,
        child:Image.asset(
           fit: BoxFit.contain,
          width: 80 * 0.5,
          height: 80 * 0.5,
                        colorIcons[index].path!,
                      ),
        
       
      ),));
    
                
                
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
              //           colorIcons[index].path!,
              //         ),
              //       ),
              //     ),
              //   ),
              // );
            },
          ),
        ),
      ),
    );
  }
}
