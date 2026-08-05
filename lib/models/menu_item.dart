// lib/models/menu_item.dart
//
// โมเดลข้อมูลสำหรับอาหาร/เครื่องดื่ม 1 รายการในเมนู

class MenuItem {
  final String name; // ชื่อของอาหาร
  final int price; // ราคา (บาท)
  final String imagePath; // path ของรูปภาพใน assets

  const MenuItem({
    required this.name,
    required this.price,
    required this.imagePath,
  });
}
