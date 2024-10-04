



import 'package:flutter/cupertino.dart';

class CustomDivider extends StatelessWidget{
  final double width;
  final double length;
  final Color color;

  const CustomDivider({super.key, required this.width, required this.length, required this.color});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: length,
      height: width,
      color: color,


    );
  }

}