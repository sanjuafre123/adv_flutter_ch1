import 'package:flutter/material.dart';

class ThemeChangeProvider extends ChangeNotifier {
  bool isDark = false;

  void changeTheme() {
    isDark  =! isDark;
    notifyListeners();
  }
}
Row buildRow({ required IconData iconName , required Color textColor,required name,}) {
  return Row(
    children: [
      Icon(
        iconName,
        color: textColor,
      ),
      const SizedBox(
        width:18,
      ),
      Text(
        name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
      ),
    ],
  );
}
