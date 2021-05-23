import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(icon: Icon(Icons.notifications), onPressed: () {}), IconButton(icon: Icon(Icons.extension), onPressed: () {})],
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Welcome, \n",
                    style: TextStyle(color: Colors.blue[300]),
                  ),
                  TextSpan(
                    text: "Hilmy, \n",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 18), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), hintText: "Search"),
            ),
            SizedBox(height: 10),
            Text(
              "Recomended Place",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            // <!-- //? #Soal No 2 (20 poin) -- HomeScreen.js -- Function HomeScreen
            //? Buatlah 1 komponen GridView dengan input berasal dari assets/img yang sudah disediakan

            //? dan memiliki 2 kolom, sehingga menampilkan 2 item per baris (horizontal)
            //? untuk tampilan apabila ada warning boleh diabaikan asal data gambar tampil
            // -->
            // tuliskan coding disini
            SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries) Image.asset('quiz3/$country.png'),
                ],
              ),
            ),

            // end coding
          ],
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas", "London", "Paris"];
