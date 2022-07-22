import 'package:flutter/material.dart';   
  
class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.hight=100}) : super(key: key);
  final double hight;
final ImageUrl='https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Image.network(ImageUrl,height: hight,fit: BoxFit.cover,);
  }
}