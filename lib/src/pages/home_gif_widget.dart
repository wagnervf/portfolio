import 'package:flutter/material.dart';

class HomeGifWidget extends StatelessWidget {
  const HomeGifWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(bottom: 40),
      child: Center(
        child: Image.asset(
          'assets/images/codding.png',
          width: 400,
          height: 400,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
