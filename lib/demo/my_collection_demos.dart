import 'package:flutter/material.dart';
class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;
  CollectionModel( {required this.imagePath,required this.price,required this.title});
}