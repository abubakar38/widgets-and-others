import 'package:flutter/material.dart';

class AbsorbPointe extends StatelessWidget {
  const AbsorbPointe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: 200,
          height: 100,
          child: ElevatedButton(
            child: null,
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 100.0,
          height: 200.0,
          child: AbsorbPointer(
            absorbing: true,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade200,
              ),
              onPressed: () {},
              child: Column(
                children: <Widget>[Text('abu bakar')],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
