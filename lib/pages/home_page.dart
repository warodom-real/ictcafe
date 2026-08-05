// lib/pages/home_page.dart
//
// หน้าหลักของแอป ใช้ BottomNavigationBar ในการสลับแสดงเมนู 3 กลุ่ม
// (อาหารคาว / อาหารหวาน / เครื่องดื่ม)
//
// หมายเหตุ: การสลับ tab ในหน้านี้ใช้วิธีเปลี่ยน widget ใน body (ไม่ใช้ Navigator)
// เพื่อให้ BottomNavigationBar ยังคงแสดงอยู่เสมอ ตามคำแนะนำในเอกสารประกอบการเรียน
// ส่วนการเปิดหน้าข้อมูลร้าน จะใช้ Navigator.push เพราะต้องการเปิดเป็น "หน้าใหม่" จริง ๆ

import 'package:flutter/material.dart';
import '../data/menu_data.dart';
import 'menu_list_page.dart';
import 'shop_info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // รายการ page ของแต่ละกลุ่มอาหาร เตรียมไว้ล่วงหน้า
  final List<Widget> _pages = const [
    MenuListPage(items: MenuData.savoryFood, accentColor: Colors.deepOrange),
    MenuListPage(items: MenuData.dessert, accentColor: Colors.pink),
    MenuListPage(items: MenuData.drinks, accentColor: Colors.brown),
  ];

  final List<String> _titles = const ['อาหารคาว', 'อาหารหวาน', 'เครื่องดื่ม'];

  void _openShopInfo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ShopInfoPage(shopInfo: MenuData.shopInfo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICT-Cafe : ${_titles[_currentIndex]}'),
        centerTitle: true,
        actions: [
          // ช่องทางที่ 1 ช่องทาง สำหรับเปิดหน้าใหม่แสดงข้อมูลร้าน
          IconButton(
            icon: const Icon(Icons.storefront),
            tooltip: 'ข้อมูลร้าน',
            onPressed: _openShopInfo,
          ),
        ],
      ),
      // เลือกเนื้อหาที่เตรียมไว้มาแสดงในส่วนของ body ตาม index ที่เลือก
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.rice_bowl),
            label: 'อาหารคาว',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.icecream),
            label: 'อาหารหวาน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            label: 'เครื่องดื่ม',
          ),
        ],
      ),
    );
  }
}
