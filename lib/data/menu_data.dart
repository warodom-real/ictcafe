// lib/data/menu_data.dart
//
// เก็บข้อมูลสมมติ (mock data) ของเมนูอาหารทั้ง 3 กลุ่ม
// และข้อมูลของร้าน ICT-Cafe

import '../models/menu_item.dart';
import '../models/shop_info.dart';

class MenuData {
  // กลุ่มที่ 1: อาหารคาว
  static const List<MenuItem> savoryFood = [
    MenuItem(
        name: 'ปีกไก่ทอด',
        price: 40,
        imagePath: 'assets/images/1355495354.jpg'),
    MenuItem(name: 'พริกแกงกุ้ง', price: 55, imagePath: 'assets/images/0418.jpg'),
    MenuItem(
        name: 'ขนมจีมน้ำยาปู',
        price: 50,
        imagePath: 'assets/images/b5a6f26e61b0419f942c6aa099bd1bf7.webp'),
    MenuItem(
        name: 'หมูนรก', price: 45, imagePath: 'assets/images/hqdefault.jpg'),
    MenuItem(
        name: 'ข้าวมหัศจรรย์', price: 80, imagePath: 'assets/images/Menu-5.jpg'),
    MenuItem(
        name: 'กุ้งเผา', price: 50, imagePath: 'assets/images/xkWfu9KNnEsj40MLnadB.webp'),
  ];

  // กลุ่มที่ 2: อาหารหวาน
  static const List<MenuItem> dessert = [
    MenuItem(name: 'พานาคอตตา', price: 100, imagePath: 'assets/images/ID_37273_57da4dc90a884.jpg'),
    MenuItem(
        name: 'ข้าวเหนียวมะม่วง',
        price: 60,
        imagePath: 'assets/images/dFQROr7oWzulq5FZUHxCFjOKH5Gfp4kaxuojbqpgwmhf8cEYAXqkRr0rqxGfxOwGuMF.jpg'),
    MenuItem(
        name: 'แพนเค้ก',
        price: 80,
        imagePath: 'assets/images/8383cdcd321ce3e4df66e3f923773345.jpg'),
    MenuItem(
        name: 'ขนมไทยสีทอง',
        price: 40,
        imagePath: 'assets/images/Image02_34.webp'),
    MenuItem(
        name: 'แอแคร์',
        price: 30,
        imagePath: 'assets/images/eclair-cafe-dessert-idea.webp'),
    MenuItem(
        name: 'ขนมเบื้อง', price: 35, imagePath: 'assets/images/Dtbezn3nNUxytg04N1L7iemmAmt2wbdDBln7w42Dl5eQBb.jpg'),
  ];

  // กลุ่มที่ 3: เครื่องดื่ม
  static const List<MenuItem> drinks = [
    MenuItem(name: 'ชาไทย', price: 30, imagePath: 'assets/images/drink-m.webp'),
    MenuItem(
        name: 'กระทิงแดง', price: 35, imagePath: 'assets/images/7c28144481313fab7cfce036eb58e47d.png'),
    MenuItem(
        name: 'Ready', price: 30, imagePath: 'assets/images/8850228001615_1-20260616164518-.webp'),
    MenuItem(name: 'ชาเขียว', price: 25, imagePath: 'assets/images/healthy-drink-vegetable-smoothie-1024x683.webp'),
    MenuItem(
        name: 'โซจู', price: 30, imagePath: 'assets/images/soju.jpg'),
    MenuItem(
        name: 'โกโก้', price: 35, imagePath: 'assets/images/โกโก้ร้อน-e1639458743884-1024x1011.jpg.webp'),
  ];

  // ข้อมูลร้าน (ข้อมูลสมมติทั้งหมด)
  static const ShopInfo shopInfo = ShopInfo(
    logoPath: 'assets/images/61c5498d-72f3-4b73-bac4-91905c6294b0.jpg',
    shopName: 'ICT-Cafe',
    address: '6767 ถนนเทคโนโลยีสารสนเทศ ตำบลท่าเมือง อำเภอเมือง จังหวัดนครปฐม 73000',
    openHours:
        'จันทร์ - ศุกร์ : 00:00 - 24:00 น.\nเสาร์ - อาทิตย์ : 00:00 - 24:00 น.',
    phone: '099-888-7777',
    line: '@ictcaferachanarok',
    facebook: 'ICT Cafe Nakhon Kamer',
  );
}
