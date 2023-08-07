import 'package:flutter/cupertino.dart';
import 'package:myapp/src/pages/home/home_page.dart';
import 'package:myapp/src/pages/info/info_page.dart';
import 'package:myapp/src/pages/login/login__page.dart';

class AppRoute{
  static const homeRoute = "home";
  static const infoRoute = "info";
  static const loginRoute = "login";
  final _route = <String, WidgetBuilder>{
    homeRoute : (context) => HomePage(),
    infoRoute : (context) => InfoPage(),
    loginRoute : (context) => LoginPage()
  };

  get getAll => _route;
}