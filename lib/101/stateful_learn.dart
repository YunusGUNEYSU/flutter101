import 'package:flutter/material.dart';
import 'package:flutter101/product/language/language_item.dart';

import '../product/counter_custom.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void _upgradeCounter(bool isIncreCount) {
    if (isIncreCount) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(languageItem.WelcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increbutton(),
          _deicbutton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          Placeholder(),
          CounterCustom(),
        ],
      ),
    );
  }

  FloatingActionButton _increbutton() {
    return FloatingActionButton(
      onPressed: () {
        _upgradeCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deicbutton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _upgradeCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
