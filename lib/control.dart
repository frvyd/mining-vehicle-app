import 'package:flutter/material.dart';
import 'dart:async';

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

class RobotDashboard extends StatefulWidget {
  @override
  _RobotDashboardState createState() => _RobotDashboardState();
}

class _RobotDashboardState extends State<RobotDashboard> {
  late Timer _timer;
  double _gasLevel = 0.0;
  String _lidarStatus = "Tarama Yapılıyor...";

  @override
  void initState() {
    super.initState();
    // Simulate data updates
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _gasLevel = (20 + (10 * (timer.tick % 10))).toDouble(); // Simulated gas value
        _lidarStatus = timer.tick % 2 == 0 ? "Haritalama Başarılı" : "Tarama Yapılıyor...";
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
                          'LIDAR Verisi: $_lidarStatus',
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
                                  Text('Gaz Sensörü Verisi: $_gasLevel ppm'),
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
                            Text('Haritalama: $_lidarStatus'),
                            Text('Hareket: Beklemede'),
                            Text('Hedef Takibi: Pasif'),
                            Text('Gaz Tespiti: Güvenli ($_gasLevel ppm)'),
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
