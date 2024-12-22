import 'package:flutter/material.dart';
import 'control.dart'; // Control sayfasını içe aktarıyoruz

void main() {
  runApp(RobotControlApp());
}

class RobotControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Robot Control Dashboard',
      theme: ThemeData.dark(),
      home: MainPage(), // Başlangıç sayfası olarak MainPage'i ayarlıyoruz
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mustafa Osman Dilmaç: 20212020013          Fatma Ruveyda Akhan: 20212020014          Mahmoud Ramadan: 20212020038'),


        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MADEN ARACI TAKİP SİSTEMİNE HOŞ GELDİNİZ :)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // Butonun genişliği
              height: 90, // Butonun yüksekliği
              child: ElevatedButton(
                onPressed: () {
                  // RobotControlApp sayfasına yönlendiriyoruz
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RobotControlApp()),
                  );
                },
                child: Text(
                  'Başlat',
                  style: TextStyle(fontSize: 30), // Buton yazı boyutu
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
