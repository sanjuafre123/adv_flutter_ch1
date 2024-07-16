import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Lec-1.4/view/change_theme.dart';
import '../component/component.dart';
import '../provider/welcomeProvider.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {

    var introScreenProviderFalse =
    Provider.of<IntroScreenProvider>(context, listen: false);
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
                data[3]['img'],
                data[3]['text1'],
                data[3]['text2'],
                data[3]['text3'],
                data[3]['text4'],
                context,
                    () {
                  introScreenProviderFalse.checkIsHome();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangeTheme(),
                    ),
                  );
                },
                Colors.grey,
                Colors.grey,
                Colors.amber,
                Colors.grey,
                'Finish',
              ),
            ],
          ),
        ),
      ),
    );
  }
}