import 'package:add_flutter/Screen/Lec-1.5.2/view/welcome2.dart';
import 'package:flutter/material.dart';

import '../../../Utils/globle.dart';
import '../component/component.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                introScreen(
                  height,
                  width,
                  data[index]['img'],
                  data[index]['text1'],
                  data[index]['text2'],
                  data[index]['text3'],
                  data[index]['text4'],
                  context,
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntroScreen2(),
                      ),
                    );
                  },
                  Colors.amber,
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                  'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
