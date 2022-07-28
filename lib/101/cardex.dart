
import 'package:flutter/material.dart';



class cardEx extends StatelessWidget {
  const cardEx({Key? key}) : super(key: key);

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        leading: const Icon(Icons.menu),
        actions:<Widget> [ IconButton(onPressed:(){}, icon:const Icon(Icons.menu_book),)],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        const Text('HelloWorld'),
      ]),
    );
  }
}