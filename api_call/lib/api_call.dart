// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Api_call extends StatefulWidget {
//   Api_call({Key? key}) : super(key: key);

//   @override
//   _Api_callState createState() => _Api_callState();
// }

// class _Api_callState extends State<Api_call> {
//   getUserData() async {
//     var response =
//         await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
//     var jasondata = jsonDecode(response.body);
//    List<User> users = [];
//       for(var u in jasondata){
//         User user=User(u["name"],u["email"],u["usrename"]);
//       }

      
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User_data'),
//       ),
//     );
//   }
// }

// class user {
//   final String name, email, username;
//   user(this.name, this.email, this.username);
// }
