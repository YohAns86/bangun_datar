import 'package:get/get.dart';

class PersegiController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int sisi = 0;
  final hasil = "".obs;
  final kel = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung" ;
    isHitungLuas.value = true;
  }
    void hitungkeliling() {
      int hitung = 4 * sisi;
      hasil.value = "Hasil perhitungan Keliling $sisi * 4 = $hitung";
      isHitungLuas.value = false;
    }

}