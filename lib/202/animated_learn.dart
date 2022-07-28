

import 'package:flutter/material.dart';


class AnimatedLearnView extends StatefulWidget {
  AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('DATA',style:Theme.of(context).textTheme.subtitle1),
    );
  }
}
extension BuiltContextExtansion on BuildContext{

  TextTheme textTheme(args) {
    return Theme.of(this).textTheme;
    
  }
}