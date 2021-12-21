import 'package:flutter/material.dart';
import 'package:my_app/model/thanh_vien.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int congHaiSo(int a, int b) => a + b;

  void startCode() {
    // 1. Tạo 1 danh sách thuộc kiểu String lưu danh sách tên members trong team.
    // 2. In ra tổng số thành viên.
    // 3. In ra ten tung thành viên.

    // List<kiểu dữ liệu> tenBien = giaTri;
    //   List<ThanhVien> danhsach = [
    //     ThanhVien("Nguyen Tan Vu", 26, true),
    //     ThanhVien("Vu Girl friend", 25, false),
    //     ThanhVien("Ly Thanh Van", 27, true),
    //     ThanhVien("Nguyen Khai Nguyen", 28, true),
    //   ];
    //
    //   debugPrint("tong so thanh vien trong danh sach la :${danhsach.length}");
    //   danhsach.forEach((thanhVien) {});
    List<Xe> danhsachxe = [
      Xe("xe tay ga", 2017, 2018),
      Xe("xe so", 2020, 2021),
      Xe("oto", 2015, 2016)
    ];
  }

  @override
  Widget build(BuildContext context) {
    // ThanhVien van = ThanhVien("Ly Thanh Van", 27, true);

    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          // van.buildThanhVien(),
          ElevatedButton(
            child: const Text("Run Code"),
            onPressed: () {
              startCode();
            },
          ),
        ],
      ))),
    );
  }
}
