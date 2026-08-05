// lib/main.dart
//
// การบ้าน #3 : แอปแสดงเมนูร้านอาหาร ICT-Cafe
// - ใช้ Bottom Navigation Bar เลือกแสดงอาหารตามกลุ่ม (อาหารคาว/อาหารหวาน/เครื่องดื่ม)
// - แต่ละกลุ่มมีอาหารอย่างน้อย 6 รายการ (รูป, ชื่อ, ราคา)
// - มีช่องทางกดเปิดหน้าใหม่แสดงข้อมูลร้าน (โลโก้, ชื่อร้าน, ที่อยู่, เวลาเปิด/ปิด, ช่องทางติดต่อ)

import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ICTCafeApp());
}

class ICTCafeApp extends StatelessWidget {
  const ICTCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICT-Cafe Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
