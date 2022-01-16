import 'package:flutter/material.dart';

class Mycon extends StatelessWidget {
  const Mycon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          decoration:
              BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
          child: Center(child: Text('this si container')),
        ),
      ),
    );
  }
}
