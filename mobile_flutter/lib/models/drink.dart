/// หมวดหมู่เครื่องดื่มของร้าน TANUKI Cafe
enum DrinkCategory {
  coffee('Coffee', 'กาแฟ'),
  milk('Milk', 'นม'),
  tea('Tea', 'ชา');

  const DrinkCategory(this.labelEn, this.labelTh);

  final String labelEn;
  final String labelTh;
}

/// โครงสร้างข้อมูลของเครื่องดื่ม 1 เมนู (Data Model)
class Drink {
  const Drink({
    required this.id,
    required this.name,
    required this.nameTh,
    required this.category,
    required this.basePrice,
  });

  final String id;
  final String name;
  final String nameTh;
  final DrinkCategory category;
  final int basePrice; // ราคาแบบร้อน (บาท)

  /// กฎของร้าน: แบบเย็นบวกเพิ่ม 10 บาท
  int get icedPrice => basePrice + 10;
}
