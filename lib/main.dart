import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screen/Lec-1.4/provide/theme_change_provider.dart';
import 'Screen/Lec-1.5.2/provider/welcomeProvider.dart';
import 'Screen/Lec-1.5.2/view/welcome.dart';
import 'Screen/Lec-1.6/Provider/Url_provider.dart';
import 'Screen/Lec-1.6/view/url_Launcher_screen.dart';

bool theme = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  theme = sharedPreferences.getBool('theme') ?? false;
  isHomed = sharedPreferences.getBool('home') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChangeThemeScreenProvider(theme),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroScreenProvider(isHomed),
        ),
        ChangeNotifierProvider(
          create: (context) => LauncherProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ChangeThemeScreenProvider changeThemeScreenProviderTrue =
        Provider.of<ChangeThemeScreenProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UrlLauncherScreen(),
//       home: Provider.of<IntroScreenProvider>(context).isHome ? const ChangeTheme() : const IntroScreen(),
      theme: changeThemeDataToLight,
      darkTheme: changeThemeDataToDark,
      themeMode: changeThemeScreenProviderTrue.isDark
          ? ThemeMode.dark
          : ThemeMode.light,
    );

    // return ChangeNotifierProvider(
    //   create: (context) => IntroProvider(),
    //   builder: (context, child) => const MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: IntroScreen(),
    //   ),
    // );

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
    //     debugShowCheckedModeBanner: false,
    //     home: const ChangeTheme(),
    //   ),
    // );
  }
}
