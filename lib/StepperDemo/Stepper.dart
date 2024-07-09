import 'package:flutter/material.dart';

import '../Utils/globle.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle,size: 30,),
          elevation: 0.2,
          shadowColor: Colors.grey,
          centerTitle: true,
          title: Text('Stepper',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
        ),
        body: Stepper(
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
          type: isGrid ? StepperType.horizontal : StepperType.vertical,
          steps: [
            Step(
                state: (selectIndex > 0) ? StepState.complete : StepState.editing,
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
                  decoration: InputDecoration(
                      hintText: 'Account ',
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
            Step(
                state: (selectIndex > 1) ? StepState.complete : StepState.editing,
                stepStyle: StepStyle(
                    color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
                title: Text('Address', style: TextStyle(fontSize: 15)),
                isActive: selectIndex == 1,
                content: TextField(
                  cursorColor: Colors.blue.shade700,
                  controller: txtAdd,
                  decoration: InputDecoration(
                      hintText: 'Address ',
                      hintStyle: TextStyle(color: Colors.grey)),
                )),
            Step(
              state: (selectIndex > 2) ? StepState.complete : StepState.editing,
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
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            setState(() {
              if (isGrid) {
                isGrid = false;
              } else {
                isGrid = true;
              }
            });
          },
          child: (isGrid)
              ? Icon(
            Icons.grid_4x4,color: Colors.white,
          )
              : Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
