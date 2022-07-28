

import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/png/Apple_Book.png')
      
    );
  }
}

enum ImagePaths{
// ignore: constant_identifier_names
    Apple_Book
}

extension ImagePathExtansion on ImagePaths{
  
String path() {
  return'assets/png/$name';
}
Widget toWidget(double height) {
  return Image.asset(path(),
  height: height,
  );
  
}

}

