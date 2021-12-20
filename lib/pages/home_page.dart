import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // Code o day
    // int soA = 5;
    // int soB = 6;
    // int ketQua = congHaiSo(soA, soB);
    // debugPrint("Ket qua $soA va $soB la $ketQua");
  }

  int congHaiSo(int a, int b) => a + b;

  void startCode() {
    // List
    List<String> danhSachThanhVien = [];

    danhSachThanhVien.add("Van");
    danhSachThanhVien.add("Vu");
    danhSachThanhVien.addAll(["Bao", "Nguyen"]);

    debugPrint("Tong so thanh vien: ${danhSachThanhVien.length}");
    danhSachThanhVien.forEach((name) {
      debugPrint(name);
    });

    List<double> diemSo = [4, 5, 6, 2, 3, 4];
    double soLonNhat = diemSo[0];
    diemSo.forEach((diem) {
      if (diem > soLonNhat) {
        soLonNhat = diem;
      }
    });
    debugPrint("Diem lon nhat la: $soLonNhat");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: ElevatedButton(
                  child: const Text("Run Code"),
                  onPressed: () {
                    startCode();
                  }))),
    );
  }
}
