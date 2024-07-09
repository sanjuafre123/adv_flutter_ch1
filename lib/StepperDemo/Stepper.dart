import 'package:flutter/material.dart';

import '../Utils/globle.dart';

void main() => runApp(const StepperExampleApp());

class StepperExampleApp extends StatelessWidget {
  const StepperExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Flutter Stepper Demo',
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 70,
        ),
        body: StepperExample(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      physics: const BouncingScrollPhysics(),
      currentStep: selectIndex,
      onStepCancel: () {
        setState(() {
          if (selectIndex > 0) {
            setState(() {
              selectIndex--;
            });
          } else {
            selectIndex = 2;
          }
        });
      },
      onStepContinue: () {
        setState(() {
          if (selectIndex != 2) {
            setState(() {
              selectIndex++;
            });
          } else {
            selectIndex = 0;
          }
        });
      },
      onStepTapped: (int index) {
        setState(() {
          selectIndex = index;
        });
      },
      steps: [
        Step(
            stepStyle: StepStyle(
                color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
            title: Text(
              'Account',
              style: TextStyle(fontSize: 15),
            ),
            isActive: selectIndex == 0,
            content: TextField(
              cursorColor: Colors.blue.shade700,
              controller: txtAcc,
              decoration: InputDecoration(hintText: 'Account '),
            )),
        Step(
            stepStyle: StepStyle(
                color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
            title: Text('Address', style: TextStyle(fontSize: 15)),
            isActive: selectIndex == 1,
            content: TextField(
              cursorColor: Colors.blue.shade700,
              controller: txtAdd,
              decoration: InputDecoration(hintText: 'Address '),
            )),
        Step(
            stepStyle: StepStyle(
                color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
            title: Text('Mobile Number', style: TextStyle(fontSize: 15)),
            isActive: selectIndex == 2,
            content: TextField(
              cursorColor: Colors.blue.shade700,
              controller: txtMob,
              decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey)),
            )),
      ],
    );
  }
}
