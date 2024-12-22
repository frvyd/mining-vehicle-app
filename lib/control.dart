import 'package:flutter/material.dart';

void main() {
  runApp(RobotControlApp());
}

class RobotControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: RobotDashboard(),
    );
  }
}

class RobotDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey[900],
                child: Center(
                  child: Text(
                    'KAMERA GÖRÜNTÜSÜ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[850],
                      child: Center(
                        child: Text(
                          'LIDAR Verisi',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey[850],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SİSTEM TAKİP PANELİ',
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold)),
                                  Divider(color: Colors.white),
                                  Text('GPS Bağlantısı: Bağlı'),
                                  Text('Ağ Bağlantısı: Bağlı'),
                                  Text('Kamera Veri Akışı: Aktif'),
                                  Text('Gaz Sensörü Verisi: Stabil'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[850],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GÖREV DURUM PANELİ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Divider(color: Colors.white),
                            Text('Konum: Tanımlanıyor...'),
                            Text('Haritalama: Aktif'),
                            Text('Hareket: Beklemede'),
                            Text('Hedef Takibi: Pasif'),
                            Text('Gaz Tespiti: Güvenli'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      color: Colors.grey[850],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('İLERİ'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('SOL'),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: Text('ACİL STOP'),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('SAĞ'),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('GERİ'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
