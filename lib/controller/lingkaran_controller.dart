import 'package:get/get.dart';

class LingkaranController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int jari = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung = jari * jari * 3.14;
    hasil.value = "Hasil perhitungan luas dari 3.14 x $jari x $jari = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    double hitung = jari * 3.14 * 2;
    hasil.value = "Hasil perhitungan keliling dari 3.14 x 2 x $jari = $hitung";
    isHitungLuas.value = false;
  }
}