import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/Tugas/Tugas14/Get_data.dart';
import 'package:sanberappflutter/Tugas/Tugas14/Models/UserModel.dart';

class PostDataApi extends StatefulWidget {
  PostDataApi({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PostDataApiState createState() => _PostDataApiState();
}

Future<UserModel> createUser(String name, String email, String address) async {
  var apiUrl = Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile");
  final response = await http.post(apiUrl, body: {
    "name": name,
    "email": email,
    "address": address,
  });

  if (response.statusCode == 201) {
    final String responseString = response.body;
    return userModelFromJson(responseString);
  } else {
    return null;
  }
}

class _PostDataApiState extends State<PostDataApi> {
  UserModel _user;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Address",
              ),
            ),
            SizedBox(height: 32),
            _user == null ? Container() : Text("the user ${_user.name} is created, and id ${_user.id}")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String name = nameController.text;
          final String email = emailController.text;
          final String address = addressController.text;
          final UserModel user = await createUser(name, email, address);
          setState(() {
            _user = user;
          });
          Navigator.of(context).pop(GetDataApi());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
