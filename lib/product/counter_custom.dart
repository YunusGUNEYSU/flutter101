import 'package:flutter/material.dart';
import 'package:flutter101/product/language/language_item.dart';

class CounterCustom extends StatefulWidget {
  const CounterCustom({Key? key}) : super(key: key);

  @override
  State<CounterCustom> createState() => _CounterCustomState();
}

class _CounterCustomState extends State<CounterCustom> {
  int _counterCustom = 0;
  final _welcome = languageItem.WelcomeTitle;
  void _updateCounter() {
    setState(() {
      _counterCustom++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounter, child: Text('$_welcome $_counterCustom'));
  }
}
