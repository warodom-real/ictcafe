// lib/pages/menu_list_page.dart
//
// Widget สำหรับแสดงรายการอาหาร/เครื่องดื่มของแต่ละกลุ่ม (1 กลุ่ม)
// แสดงเป็น Grid โดยแต่ละรายการมี รูปภาพ, ชื่อ, ราคา

import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class MenuListPage extends StatelessWidget {
  final List<MenuItem> items;
  final Color accentColor;

  const MenuListPage({
    super.key,
    required this.items,
    this.accentColor = Colors.brown,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (context, index) {
        final MenuItem item = items[index];
        return _MenuCard(item: item, accentColor: accentColor);
      },
    );
  }
}

class _MenuCard extends StatelessWidget {
  final MenuItem item;
  final Color accentColor;

  const _MenuCard({required this.item, required this.accentColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // รูปของอาหาร
          Expanded(
            child: Image.asset(
              item.imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: const Icon(Icons.fastfood, size: 48, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ชื่อของอาหาร
                Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                // ราคา
                Text(
                  '${item.price} บาท',
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
