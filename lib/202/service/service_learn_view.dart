
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/202/service/post_mode.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  bool _isLoading=false;
String? name;
@override
void initState() {
  super.initState();
  name='Yunus';
  fetchPostItems();
}
void _changeLoading() {
  setState(() {
    _isLoading=!_isLoading;
  });
  
}
  List<PostModel>? _items;
  
  Future<void> fetchPostItems() async {
   final  response=  await Dio().get('https://jsonplaceholder.typicode.com/posts'); 
   if (response.statusCode==HttpStatus.ok) {
     final _datas=response.data;
     if(_datas is List){
      setState(() {
         _items=_datas.map((e) => PostModel.fromJson(e)).toList();
      });
     
     }

   }
        _changeLoading();
  }
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [_isLoading?const CircularProgressIndicator():const SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal:10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return _PostCard(model: _items?[index]) ;
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  }) : _model = model, super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(_model?.title??''),
        subtitle: Text(_model?.body??''),
      ),
    );
  }
}