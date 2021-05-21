import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/DrawerScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: DrawerScreen(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 120),
                  IconButton(icon: Image.asset('icon/notifications.png'), onPressed: () {}),
                  IconButton(icon: Image.asset('icon/add_shopping_cart.png'), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
              Text.rich(
                TextSpan(
                  text: 'Welcome, ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),
                  children: [
                    TextSpan(
                      text: 'Alex',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.greenAccent,
                      ),
                    )
                  ],
                ),
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search',
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Recommended Places',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  childAspectRatio: 1.491,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for (var country in countries) Image.asset('icon/$country.png'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

final countries = ['Berlin', 'Monas', 'Roma', 'Tokyo'];
