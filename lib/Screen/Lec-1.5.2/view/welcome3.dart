import 'package:adv_flutter_ch1/Screen/Lec-1.5.2/view/welcome4.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              introScreen(
                height,
                width,
                data[2]['img'],
                data[2]['text1'],
                data[2]['text2'],
                data[2]['text3'],
                data[2]['text4'],
                context,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreen4(),
                    ),
                  );
                },
                Colors.grey,
                Colors.amber,
                Colors.grey,
                Colors.grey,
                'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
