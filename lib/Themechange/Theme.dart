import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => ThemePageState();
}

class ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: height * 0.013,
              ),
              const Text(
                'it`s a simple example of\n          dark theme',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Colors.grey),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark = false;
                  });
                },
                child:
                lightDarkButton(height, width, 'Light Mode', Colors.amber),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark = true;
                  });
                },
                child: lightDarkButton(height, width, 'Dark Mode', Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Container lightDarkButton(double height, double width, text, color) {
  return Container(
    margin: const EdgeInsets.fromLTRB(25, 25, 25, 5),
    alignment: Alignment.center,
    height: height * 0.1,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    ),
  );
}

bool isDark = false;
