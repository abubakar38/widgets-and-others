import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> countris = [
    "bangladesh",
    "india",
    "austrilia",
    "pakistan",
    "srilanka"
  ];
  List<String> visiblaeCountry;
  @override
  void initState() {
    visiblaeCountry = countris;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("where method"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {});

              visiblaeCountry =
                  countris.where((conry) => conry.contains(value)).toList();
            },
            decoration: const InputDecoration(labelText: 'country name'),
            // onChanged: () {
            //   // ignore: avoid_print

            // },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(visiblaeCountry[index]),
                );
              },
              itemCount: visiblaeCountry.length,
            ),
          )
        ],
      ),
    );
  }
}
