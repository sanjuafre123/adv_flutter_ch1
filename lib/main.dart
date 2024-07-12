import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/Lec-1 .5/Provider/homeProvider.dart';
import 'Screen/Lec-1 .5/view/HomePage.dart';
import 'Screen/Lec-1.4/provide/theme_change_provider.dart';
import 'Screen/Lec-1.4/view/change_theme.dart';
import 'Screen/Lec-1.5.2/provider/welcomeProvider.dart';
import 'Screen/Lec-1.5.2/view/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IntroProvider(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );



    // return ChangeNotifierProvider(
    //   create: (context) => QuoteProvider(),
    //   builder: (context, child) => const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Homepage(),
    //   ),
    // );



    // return ChangeNotifierProvider(
    //   create: (context) => ThemeChangeProvider(),
    //   builder: (context, child) => MaterialApp(
    //     theme: ThemeData(
    //       brightness: Brightness.light,
    //       colorScheme: const ColorScheme.light(
    //         surface: Color(0xff9730a4),
    //         onInverseSurface: Color(0xff5ea669),
    //         onTertiary: Color(0xff3a91d6),
    //         onTertiaryContainer: Color(0xffc56763),
    //       ),
    //     ),
    //     darkTheme: ThemeData(
    //       brightness: Brightness.dark,
    //       colorScheme: const ColorScheme.dark(
    //         surface: Color(0xffc57b24),
    //         onInverseSurface: Color(0xff4478ac),
    //         onTertiary: Color(0xffd1275e),
    //         onTertiaryContainer: Color(0xffe2de7f),
    //       ),
    //     ),
    //     themeMode: Provider.of<ThemeChangeProvider>(context).isDark
    //         ? ThemeMode.dark
    //         : ThemeMode.light,
    //     debugShowCheckedModeBanner: false,
    //     home: const ChangeTheme(),
    //   ),
    // );
  }
}
