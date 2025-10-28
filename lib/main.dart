import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:fooddeliveryapp/pages/home_page.dart';

import 'package:fooddeliveryapp/themes/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: themeProvider.themeData,
      home: HomePage(), 
    );
  }
}
