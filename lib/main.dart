import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          elevation: 0,
          titleSpacing: 20,
          color: Colors.teal,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
      ),
      home: HomeLayout(),
    );
  }
}