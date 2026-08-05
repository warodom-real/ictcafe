// lib/pages/shop_info_page.dart
//
// หน้าใหม่ที่จะเปิดขึ้นมาเมื่อผู้ใช้กดช่องทาง "ข้อมูลร้าน / ติดต่อเรา"
// แสดง รูป logo ร้าน, ชื่อร้าน, ที่อยู่, เวลาเปิด/ปิด และช่องทางการติดต่อ

import 'package:flutter/material.dart';
import '../models/shop_info.dart';

class ShopInfoPage extends StatelessWidget {
  final ShopInfo shopInfo;

  const ShopInfoPage({super.key, required this.shopInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลร้าน'),
        // ปุ่มย้อนกลับ (<) จะปรากฏอัตโนมัติเพราะหน้านี้เปิดด้วย Navigator.push
        // และมีการใส่ AppBar ไว้
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // โลโก้ร้าน
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                shopInfo.logoPath,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 140,
                  height: 140,
                  color: Colors.grey[300],
                  child: const Icon(Icons.storefront, size: 60),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // ชื่อร้าน
          Center(
            child: Text(
              shopInfo.shopName,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),

          const Divider(),

          // ที่อยู่
          _InfoTile(
            icon: Icons.location_on,
            title: 'ที่อยู่',
            detail: shopInfo.address,
          ),

          // เวลาเปิด/ปิด
          _InfoTile(
            icon: Icons.access_time,
            title: 'เวลาเปิด - ปิด',
            detail: shopInfo.openHours,
          ),

          // ช่องทางการติดต่อ
          _InfoTile(
            icon: Icons.phone,
            title: 'โทรศัพท์',
            detail: shopInfo.phone,
          ),
          _InfoTile(
            icon: Icons.chat_bubble,
            title: 'LINE',
            detail: shopInfo.line,
          ),
          _InfoTile(
            icon: Icons.facebook,
            title: 'Facebook',
            detail: shopInfo.facebook,
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String detail;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.brown),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 2),
                Text(detail, style: const TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
