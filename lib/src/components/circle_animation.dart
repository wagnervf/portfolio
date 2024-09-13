import 'package:flutter/material.dart';
import 'package:portfolio/src/components/icon_orbit_animation.dart';
import 'package:portfolio/src/components/typography.dart';
import 'package:portfolio/src/models/icon_animation_model.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

class CircleAnimation extends StatefulWidget {
  const CircleAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CircleAnimationState createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<IconAnimationModel> iconsTwo = IconDataListTwo.iconsSvg;
    List<IconAnimationModel> iconsOne = IconDataListOne.iconsSvg;

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconOrbitAnimation(
            icons: iconsOne,
            length: 6,
            time: 10,
            radius: 130,
          ),
          IconOrbitAnimation(
            icons: iconsTwo,
            length: 13,
            time: 20,
            radius: 200,
          ),
          Center(
            child: RiveAnimatedIcon(
                riveIcon: RiveIcon.profile,
                width: 50,
                height: 50,
                color: Colors.green,
                strokeWidth: 3,
                loopAnimation: true,
                onTap: () {},
                onHover: (value) {}),
          ),
        ],
      ),
    );
  }
}
