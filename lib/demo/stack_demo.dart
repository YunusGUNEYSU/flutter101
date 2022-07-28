import 'package:flutter/material.dart';
import 'package:flutter101/core/random_image.dart';


class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
 final double cardHeight=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(flex: 4, child: Stack(
          alignment: Alignment.center,
          children: [Positioned.fill(child:  const RandomImage(),bottom: cardHeight/2,),
          Positioned(
            height: cardHeight,
           width: 200,
            bottom: 0,
            child: const Card(
              color: Colors.red,
              shape:RoundedRectangleBorder(),
            ))
         
        ],)),
        const Spacer(flex: 6,)
      ],
    
        
      ),
    );
  }
}