import 'package:tanuki_cafe/models/drink.dart';

/// รายการเมนูเครื่องดื่มของร้าน TANUKI Cafe
const List<Drink> tanukiMenu = [
  // ===== Coffee (กาแฟ) =====
  Drink(
    id: 'coffee-espresso',
    name: 'Espresso',
    nameTh: 'เอสเพรสโซ่',
    category: DrinkCategory.coffee,
    basePrice: 50,
  ),
  Drink(
    id: 'coffee-americano',
    name: 'Americano',
    nameTh: 'อเมริกาโน่',
    category: DrinkCategory.coffee,
    basePrice: 55,
  ),
  Drink(
    id: 'coffee-latte',
    name: 'Cafe Latte',
    nameTh: 'ลาเต้',
    category: DrinkCategory.coffee,
    basePrice: 65,
  ),
  Drink(
    id: 'coffee-cappuccino',
    name: 'Cappuccino',
    nameTh: 'คาปูชิโน่',
    category: DrinkCategory.coffee,
    basePrice: 65,
  ),
  // ===== Milk (นม) =====
  Drink(
    id: 'milk-fresh',
    name: 'Fresh Milk',
    nameTh: 'นมสด',
    category: DrinkCategory.milk,
    basePrice: 50,
  ),
  Drink(
    id: 'milk-caramel',
    name: 'Caramel Milk',
    nameTh: 'นมคาราเมล',
    category: DrinkCategory.milk,
    basePrice: 60,
  ),
  Drink(
    id: 'milk-cocoa',
    name: 'Cocoa Milk',
    nameTh: 'โกโก้',
    category: DrinkCategory.milk,
    basePrice: 60,
  ),
  // ===== Tea (ชา) =====
  Drink(
    id: 'tea-thai',
    name: 'Thai Milk Tea',
    nameTh: 'ชาไทย',
    category: DrinkCategory.tea,
    basePrice: 55,
  ),
  Drink(
    id: 'tea-peach',
    name: 'Peach Tea',
    nameTh: 'ชาพีช',
    category: DrinkCategory.tea,
    basePrice: 55,
  ),
  Drink(
    id: 'tea-matcha',
    name: 'Matcha Latte',
    nameTh: 'มัทฉะลาเต้',
    category: DrinkCategory.tea,
    basePrice: 70,
  ),
];
