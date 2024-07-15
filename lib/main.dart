import 'package:adv_flutter_ch1/Screen/Lec-1.4/provide/theme_change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screen/Lec-1.5.2/provider/welcomeProvider.dart';
import 'Screen/Lec-1.5.2/view/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => IntroProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeChangeProvider(),
      ),
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
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
