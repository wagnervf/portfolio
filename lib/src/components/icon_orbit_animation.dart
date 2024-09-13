import 'package:flutter/material.dart';
import 'dart:math';

import 'package:portfolio/src/models/icon_animation_model.dart';

class IconOrbitAnimation extends StatefulWidget {
  const IconOrbitAnimation({
    Key? key,
    required this.icons,
    required this.time,
    required this.length,
    required this.radius,
  }) : super(key: key);

  final List<IconAnimationModel> icons;
  final int time;
  final int length;
  final double radius;

  @override
  _IconOrbitAnimationState createState() => _IconOrbitAnimationState();
}

class _IconOrbitAnimationState extends State<IconOrbitAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.time),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Tamanho da área disponível
    final size = MediaQuery.of(context).size;
    final centerX = size.width / 4;
    final centerY = size.height / 2.2;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: lisIcons(widget.icons, centerX, centerY),
        );
      },
    );
  }

  List<Widget> lisIcons(
      List<IconAnimationModel> iconsSVG, double centerX, double centerY) {
    return List.generate(widget.length, (index) {
      final angle = (index / widget.length) * 2 * pi;
      final radius = widget.radius;
      final offsetX = radius * cos(angle + (_controller.value * 2 * pi));
      final offsetY = radius * sin(angle + (_controller.value * 2 * pi));

      // Centraliza os ícones no centro da área disponível
      return Positioned(
        left: centerX + offsetX - 30, // Centraliza horizontalmente
        top: centerY + offsetY - 30, // Centraliza verticalmente
        child: MouseRegion(
          onEnter: (_) =>
              _controller.stop(), // Para a animação ao passar o mouse
          onExit: (_) =>
              _controller.repeat(), // Reinicia a animação quando o mouse sai

          child: Center(
            child: Tooltip(
              message: iconsSVG[index % iconsSVG.length]
                  .name, 
              onTriggered: () => print(iconsSVG[index % iconsSVG.length].name),

              child: Image.asset(
                iconsSVG[index % iconsSVG.length].path ?? '',
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      );
    });
  }
}
