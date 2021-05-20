import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/Tugas/Tugas14/Models/UserModel.dart';
import 'package:sanberappflutter/Tugas/Tugas14/Post_data.dart';

class GetDataApi extends StatefulWidget {
  @override
  _GetDataApiState createState() => _GetDataApiState();
}

class _GetDataApiState extends State<GetDataApi> {
  get id => null;

  getUserData() async {
    var response = await http.get(Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile"));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["email"], u["address"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      getUserData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PostDataApi()));
                },
                child: Icon(Icons.add, size: 26),
                style: ElevatedButton.styleFrom(primary: Colors.amber),
              ))
        ],
        title: Text("User List"),
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: Container(
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(child: Text("Loading...")),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(snapshot.data[i].name),
                    subtitle: Text(snapshot.data[i].address),
                    trailing: Text(snapshot.data[i].email),
                  );
                },
              );
            }
          },
          future: getUserData(),
        ),
      ),
    );
  }
}
