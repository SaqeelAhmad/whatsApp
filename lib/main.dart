import 'dart:async';
import 'package:flutter/material.dart';


import 'package:flutter/services.dart';

import 'Page/Home Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Color(0xFF075E55),
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withAlpha(0),
          )),

      routes: {
        "/":(context)=> Homepage(),
      },
    );
  }
}

