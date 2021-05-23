//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          //<!--  //? #Bonus (10 poin) -- DrawerScreen.dart --
          //? agar ubahlah gambar pada drawerScreen.dart menjadi individu masing masing, untuk nama dan email juga beri yang dari email yang terdaftar di sanbercode.com -->
          //1.Tuliskan coding disini
          //  account nama
          accountName: Text("Alexander Ang"),
          // end coding
          //
          //2.Tuliskan coding disini
          //   gambar masing masing peserta
          currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/img/profile.jpg")),
          // end coding
          //
          //3.Tuliskan coding disini
          //   account email
          accountEmail: Text("alexanderang.24@gmail.com"),

          // end coding
        ),
        DrawerListTile(
          iconData: Icons.group,
          title: "NewGroup",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.lock,
          title: "New Secret Group",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.notifications,
          title: "New Channel Chat",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.contacts,
          title: "contacts",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.bookmark_border,
          title: "Saved Message",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.phone,
          title: "Calls",
          onTilePressed: () {},
        )
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key key, this.iconData, this.title, this.onTilePressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
