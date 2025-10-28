import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/themes/light_mode.dart';



class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  
}
