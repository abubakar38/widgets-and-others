import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<String> country = ["bangladesh", "india", "pakistan", "austrilia"];
  List<String> showcountry;
  @override
  void initState() {
    showcountry = country;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Where Mehtod'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {});
              showcountry = country
                  .where((countris) => countris.contains(value))
                  .toList();
            },
            decoration: const InputDecoration(
              labelText: "county name",
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 10),
          Container(
            height: 300,
            child: ListView.builder(
                shrinkWrap: false,
                itemCount: showcountry.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(showcountry[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
