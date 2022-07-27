import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter101/101/cardex.dart';
import 'package:flutter101/101/column_row_learn.dart';
import 'package:flutter101/101/list_tile_learn.dart';
import 'package:flutter101/202/service/service_learn_view.dart';
import 'package:flutter101/202/tab_bar_learn.dart';
import '101/list_view_learn.dart';
import '101/page_view_learn.dart';
import '101/stateful_learn.dart';
import '101/stateful_life_cycle.dart';
import '101/text_field_learn.dart';
import 'demo/colors_demo.dart';
import 'demo/my_collection_demos.dart';
import 'demo/stack_demo.dart';
import 'package:dio/dio.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        bottomAppBarTheme: BottomAppBarTheme(
          shape: CircularNotchedRectangle(),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        listTileTheme:const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        errorColor: Colors.amber,
        appBarTheme: const AppBarTheme(
         centerTitle: true,
         systemOverlayStyle: SystemUiOverlayStyle.light,
         backgroundColor: Colors.transparent,
         elevation: 0,          
        ),
      ),
      home:   ServiceLearn(),
    );
  }
}

