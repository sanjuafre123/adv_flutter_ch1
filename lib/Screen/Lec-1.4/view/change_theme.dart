import 'package:add_flutter/Screen/Lec-1.4/provide/theme_change_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    ThemeChangeProvider themeChangeProviderTrue =
        Provider.of<ThemeChangeProvider>(context, listen: true);
    ThemeChangeProvider themeChangeProviderFalse =
        Provider.of<ThemeChangeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 25,
                  ),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    size: 26,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.030,
              ),
              const CircleAvatar(
                radius: 75,
              ),
              SizedBox(
                height: height * 0.010,
              ),
              const Text(
                'Sanju Afre',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,),
              ),
              SizedBox(
                height: height * 0.080,
              ),
              Row(
                children: [
                  Icon(
                    Provider.of<ThemeChangeProvider>(context).isDark
                        ? CupertinoIcons.moon_fill
                        : Icons.sunny,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  SizedBox(
                    width: width * 0.040,
                  ),
                  Text(
                    Provider.of<ThemeChangeProvider>(context).isDark
                        ? 'Dark Mode'
                        : 'Light Mode',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    value: themeChangeProviderTrue.isDark,
                    activeColor:
                        Provider.of<ThemeChangeProvider>(context).isDark
                            ? Theme.of(context).colorScheme.surface
                            : Theme.of(context).colorScheme.surface,
                    onChanged: (value) {
                      themeChangeProviderFalse.changeTheme();
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.030,
              ),
              Column(
                children: [
                  buildRow(
                      iconName: Icons.grid_on_sharp,
                      name: 'Story',
                      textColor: Theme.of(context).colorScheme.onInverseSurface),
                  SizedBox(
                    height: height * 0.040,
                  ),
                  buildRow(
                      iconName: Icons.settings,
                      name: 'Setting and Privacy',
                      textColor: Theme.of(context).colorScheme.onTertiary),
                  SizedBox(
                    height: height * 0.040,
                  ),
                  buildRow(
                      iconName: Icons.message_outlined,
                      name: 'Help Center',
                      textColor: Theme.of(context).colorScheme.onTertiaryContainer),
                  SizedBox(
                    height: height * 0.040,
                  ),
                  buildRow(
                      iconName: Icons.notifications,
                      name: 'Notification',
                      textColor: Theme.of(context).colorScheme.surface),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
