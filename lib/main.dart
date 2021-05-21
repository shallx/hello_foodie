import 'package:flutter/material.dart';
import 'package:foodpanda/screens/home_screen.dart';
import 'package:foodpanda/shared/textfield_unfocus.dart';
import 'package:foodpanda/shared/themedata.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CLThemeData().light(),
        home: HomeScreen(),
      ),
    );
  }
}
