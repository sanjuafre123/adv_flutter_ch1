import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: height*0.15,
              ),
              SizedBox(
                height: height*0.45,
                width: width*0.75,
                child: Image.asset('assets/1.jpeg',fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
