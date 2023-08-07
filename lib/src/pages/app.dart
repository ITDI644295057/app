import 'package:flutter/material.dart';
import 'package:myapp/src/pages/configs/app_route.dart';
import 'package:myapp/src/pages/home/home_page.dart';
import 'package:myapp/src/pages/info/info_page.dart';
import 'package:myapp/src/pages/login/login__page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:AppRoute().getAll,
      theme: ThemeData(primarySwatch: Colors.blue),
    // home: HomePage(),
      home: LoginPage(),
    );
  }
}