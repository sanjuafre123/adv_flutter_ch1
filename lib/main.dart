import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark? ThemeMode.dark:ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              const Text(
                'Yo Man!',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,letterSpacing: 1),
              ),
              SizedBox(height: height*0.015,),
              const Text(
                'it`s a simple example of\n          dark theme',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

bool isDark = false;