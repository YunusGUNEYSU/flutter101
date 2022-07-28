import 'package:flutter/material.dart';

class ColorDemo extends StatefulWidget {
  const ColorDemo({Key? key}) : super(key: key);

  @override
  State<ColorDemo> createState() => _ColorDemoState();
}

class _ColorDemoState extends State<ColorDemo> {

  Color? _backroundColor=Colors.transparent;
  void changeBackroundColor(Color color) {
    
    setState(() {
      _backroundColor=color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:_backroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: 
      _ColorOnTap, 
      
      items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
            BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: 'Blue'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
      ]),
    );
  }

  void _ColorOnTap(int value) {
      if (value==_myClours.red.index) {
        changeBackroundColor(Colors.red);
      }
    else if (value==_myClours.blue.index) {
        changeBackroundColor(Colors.blue);
  }
      else  if(value==_myClours.yellow.index){
        changeBackroundColor(Colors.yellow);
      }
    }
}

enum _myClours{red,blue,yellow}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
