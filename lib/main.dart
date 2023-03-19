import 'package:chat_app/routs/app.rout.dart';
import 'package:chat_app/views/auth.views.dart';
import 'package:chat_app/views/home.views.dart';
import 'package:chat_app/views/unknow.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: RouteView.values.map((e) {
        switch (e) {
          case RouteView.home:
            return GetPage(name: "/${e.name}", page: () => HomeView());
          case RouteView.home:
            return GetPage(name: "/${e.name}", page: () => AuthView());

          default:
            return GetPage(name: "/${e.name}", page: () => UnknowView());
        }
      }).toList(),
      initialRoute: RouteView.home.name,
    );
  }
}
