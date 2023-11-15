import 'package:bangun_datar_app/controller/lingkaran_controller.dart';
import 'package:bangun_datar_app/controller/panjang_controller.dart';
import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});

  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Segitiga Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/download.jpg", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Segitiga"),
          ),
          Text(
              "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan △."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _lingkaranController.jari = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari-jari",
                  hintText: "Masukkan Jari-jari",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // text color
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      _lingkaranController.hitungLuas();
                    },
                    child: Text("Hitung Luas")),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // text color
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {
                    _lingkaranController.hitungKeliling();
                  },
                  child: Text("Hitung Keliling")),
            ],
          ),
          Obx(
                () => Text(
              _lingkaranController.hasil.value,
              style: TextStyle(
                color: _lingkaranController.isHitungLuas.value
                    ? Colors.red
                    : Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}