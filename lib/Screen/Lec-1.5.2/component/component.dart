import 'package:flutter/material.dart';

// 'text5': 'take to heal? Learn more inside.',

// 'text5': 'education to help you accelerate your',
// 'text6': 'nursing career and and deliver deliver better care',
// 'text7': 'regardless of clinical setting',

List data = [
  {
    'img': 'assets/bg2.jpeg',
    'text1': 'Welcome!',
    'text2': 'Taking care of you health has',
    'text3': 'Become easier ! Learn more,',
    'text4': 'how todo it.',
  },
  {
    'img': 'assets/2.png',
    'text1': 'Wound Certification',
    'text2': 'Based on decades of experience, Vohra`s',
    'text3': 'team of specialty wound care physicians',
    'text4': 'developed this practical wound.',
  },
  {
    'img': 'assets/3.jpeg',
    'text1': 'Predictive Healing',
    'text2': 'Wounds are complicated. But patients',
    'text3': 'and medical teams want clear answers -',
    'text4': 'especially, how long will this wound.',
  },
  {
    'img': 'assets/4.jpeg',
    'text1': 'Treatment Options',
    'text2': 'Your treatment choice is always driven',
    'text3': 'by the condition of the wound bed and',
    'text4': 'the surrounding tissue.',
  },
];

Column introScreen(
  double height,
  double width,
  String img,
  String text1,
  String text2,
  String text3,
  String text4,
  context,
  onTap,
  color1,
  color2,
  color3,
  color4,
  next,
) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.10,
      ),
      SizedBox(
        height: height * 0.42,
        width: width * 0.72,
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: height * 0.035,
      ),
      Text(
        text1,
        style: const TextStyle(
          color: Color(0xff12558d),
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
      SizedBox(
        height: height * 0.010,
      ),
      Text(
        text2,
        style: const TextStyle(
            color: Color(0xff798a96),
            fontWeight: FontWeight.w500,
            fontSize: 17),
      ),
      Text(
        text3,
        style: const TextStyle(
            color: Color(0xff798a96),
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ),
      Text(
        text4,
        style: const TextStyle(
            color: Color(0xff798a96),
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ),
      SizedBox(
        height: height * 0.10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          screenPass(height, width, color1),
          screenPass(height, width, color2),
          screenPass(height, width, color3),
          screenPass(height, width, color4),
        ],
      ),
      SizedBox(
        height: height * 0.02,
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          next,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
Container screenPass(double height, double width, Color color) {
  return Container(
    height: height * 0.01,
    width: width * 0.05,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}
