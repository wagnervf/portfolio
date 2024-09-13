import 'package:flutter/material.dart';
import 'package:portfolio/src/components/colors.dart';
import 'package:portfolio/src/components/typography.dart';

class IamSection extends StatelessWidget {
  const IamSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .2),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
        mainAxisAlignment: MainAxisAlignment.center,   
        children: [
      const Text(
        'Hi,\nI\'m Wagner.',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 60,
          color: textPrimary,
          fontFamily: fontFamily,
        ),
      ),
      const SizedBox(height: 8),  // Espaçamento entre os textos
      const Text(
        'Develop | Others | Outhers',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 8),  // Espaçamento entre os textos
      const Text(
        'sdasdsadsadsadsa asdasdasdasdsadasd asd asdasdsadasd asaqdasdasdasda sasdasdasdsadas dasd',
        softWrap: true,
        style: TextStyle(
          fontSize: 20,
          color: textPrimary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w300,
        ),
      ),

       const SizedBox(height: 8),  // Espaçamento entre os textos
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,  
        mainAxisAlignment: MainAxisAlignment.start,   
        children: [
        TextButton(onPressed:() {}, child:  Text('GitHub', style: btnStyle(),)),
        const Text('/'),
        TextButton(onPressed:() {}, child:  Text('GitHub',  style: btnStyle(),)),
        const Text('/'),
        TextButton(onPressed:() {}, child:  Text('GitHub',  style: btnStyle(),))
      ],)
        ],
      ),
    );

  }

  TextStyle btnStyle() => const TextStyle(fontSize: 16, fontFamily: fontFamily, color: primary);
}
