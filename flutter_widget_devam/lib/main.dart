import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_widget_devam/custom_scrollview_kullanimi.dart';
//import 'package:flutter_widget_devam/gridview_kullanimi.dart';
//import 'package:flutter_widget_devam/list_layout_problems.dart';
//import 'package:flutter_widget_devam/card_list.dart';
//import 'package:flutter_widget_devam/listview_kullanimi.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      title: "Material App",
      //home: CardListKullanimi(),
      //home: ListviewKullanimi(),
      //home: ListLayoutProblemleri(),
      //home: GridviewKullanimi(),
      home: CustomScrollViewKullanimi(),
      builder: EasyLoading.init(),
    );
  }
}
