
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherProvider extends ChangeNotifier{

  void phoneLauncher()
  {
    Uri uri = Uri.parse('tel: +91 9173074442');
    launchUrl(uri);
  }
  void mailLauncher()
  {
    Uri uri = Uri.parse('mailto: sanjuafre08@gmail.com');
    launchUrl(uri);
  }
  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/sanju-afre-a294432a9/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://github.com/sanjuafre123');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void gitLauncher()
  {
    Uri uri = Uri.parse('https://github.com/sanjuafre123');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }

}
