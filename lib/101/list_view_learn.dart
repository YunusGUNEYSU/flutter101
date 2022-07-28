

import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        FittedBox(
          child: Text(
            'Merhaba',
            maxLines: 1,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Container(
          color: Colors.red,
          height: 300,
        ),
        const Divider(),
        Container(
          color: Colors.blue,
          height: 300,
        ),
      ]),
    );
  }
}
