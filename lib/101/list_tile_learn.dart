import 'package:flutter/material.dart';
import 'package:flutter101/core/random_image.dart';


class listLearn extends StatelessWidget {
  const listLearn({Key? key}) : super(key: key);
  final ImageUrl='https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title:RandomImage(),
                dense: true,
                onTap:() {},
                subtitle: const Text('How do you use your card'),
                leading:const Icon(Icons.money) ,
                trailing: const Icon(Icons.chevron_right),
            
            
            
              ),
            ),
          )
          
        ]),
      ),
    );
  }
}