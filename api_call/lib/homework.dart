import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  Homework({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('this is text 1'),
                  Container(
                      height: 150,
                      width: 150,
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('this si child txt'),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('this is text 1'),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('this is  child txt'),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
