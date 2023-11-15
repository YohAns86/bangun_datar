import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:bangun_datar_app/pages/lingkaran_page.dart';
import 'package:bangun_datar_app/pages/persegi_page.dart';
import 'package:bangun_datar_app/pages/persegipanjang_page.dart';
import 'package:bangun_datar_app/pages/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Homepage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/img_4.png", title: "Persegi")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PanjangPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/img_1.png", title: "Persegi Panjang")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SegitigaPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/img_2.png", title: "Persegi Panjang")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LingkaranPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/download.jpg", title: "Lingkaran")),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
