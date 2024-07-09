import 'package:flutter/material.dart';

import 'StepperDemo/Stepper.dart';
import 'Utils/globle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StepperExample(),
    );
  }
}

// class StepperExample extends StatefulWidget {
//   const StepperExample({super.key});
//
//   @override
//   State<StepperExample> createState() => _StepperExampleState();
// }
//
// class _StepperExampleState extends State<StepperExample> {
//   int selectIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stepper(
//           physics: const BouncingScrollPhysics(),
//           currentStep: selectIndex,
//           onStepCancel: () {
//             setState(() {
//               if (selectIndex > 0) {
//                 setState(() {
//                   selectIndex--;
//                 });
//               } else {
//                 selectIndex = 2;
//               }
//             });
//           },
//           onStepContinue: () {
//             setState(() {
//               if (selectIndex != 2) {
//                 setState(() {
//                   selectIndex++;
//                 });
//               } else {
//                 selectIndex = 0;
//               }
//             });
//           },
//           onStepTapped: (int index) {
//             setState(() {
//               selectIndex = index;
//             });
//           },
//           type: isGrid ? StepperType.horizontal : StepperType.vertical,
//           steps: [
//             Step(
//                 state: (selectIndex > 0) ? StepState.complete : StepState.editing,
//                 stepStyle: StepStyle(
//                     color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
//                 title: Text(
//                   'Account',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 isActive: selectIndex == 0,
//                 content: TextField(
//                   cursorColor: Colors.blue.shade700,
//                   controller: txtAcc,
//                   decoration: InputDecoration(
//                       hintText: 'Account ',
//                       hintStyle: TextStyle(color: Colors.grey)),
//                 )),
//             Step(
//                 state: (selectIndex > 1) ? StepState.complete : StepState.editing,
//                 stepStyle: StepStyle(
//                     color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
//                 title: Text('Address', style: TextStyle(fontSize: 15)),
//                 isActive: selectIndex == 1,
//                 content: TextField(
//                   cursorColor: Colors.blue.shade700,
//                   controller: txtAdd,
//                   decoration: InputDecoration(
//                       hintText: 'Address ',
//                       hintStyle: TextStyle(color: Colors.grey)),
//                 )),
//             Step(
//               state: (selectIndex > 2) ? StepState.complete : StepState.editing,
//               stepStyle: StepStyle(
//                   color: Colors.blue, indexStyle: TextStyle(color: Colors.white)),
//               title: Text('Mobile Number', style: TextStyle(fontSize: 15)),
//               isActive: selectIndex == 2,
//               content: TextField(
//                 cursorColor: Colors.blue.shade700,
//                 controller: txtMob,
//                 decoration: InputDecoration(
//                     hintText: 'Mobile Number',
//                     hintStyle: TextStyle(color: Colors.grey)),
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.blue,
//           onPressed: () {
//             setState(() {
//               if (isGrid) {
//                 isGrid = false;
//               } else {
//                 isGrid = true;
//               }
//             });
//           },
//           child: (isGrid)
//               ? Icon(
//             Icons.grid_4x4,
//           )
//               : Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
