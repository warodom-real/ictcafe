// lib/models/shop_info.dart
//
// โมเดลข้อมูลของร้าน (ใช้สำหรับหน้าข้อมูลร้าน)

class ShopInfo {
  final String logoPath;
  final String shopName;
  final String address;
  final String openHours;
  final String phone;
  final String line;
  final String facebook;

  const ShopInfo({
    required this.logoPath,
    required this.shopName,
    required this.address,
    required this.openHours,
    required this.phone,
    required this.line,
    required this.facebook,
  });
}
