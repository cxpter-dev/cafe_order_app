import 'package:material_ui/material_ui.dart';
import 'package:tanuki_cafe/data/menu_data.dart';
import 'package:tanuki_cafe/models/drink.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  IconData _iconForCategory(DrinkCategory category) {
    switch (category) {
      case DrinkCategory.coffee:
        return Icons.coffee;
      case DrinkCategory.milk:
        return Icons.local_drink;
      case DrinkCategory.tea:
        return Icons.emoji_food_beverage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: DrinkCategory.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TANUKI Cafe'),
          bottom: TabBar(
            tabs: DrinkCategory.values
                .map(
                  (category) => Tab(
                    icon: Icon(_iconForCategory(category)),
                    text: '${category.labelEn} (${category.labelTh})',
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          children: DrinkCategory.values.map((category) {
            final drinks = tanukiMenu
                .where((drink) => drink.category == category)
                .toList();

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: drinks.length,
              itemBuilder: (context, index) {
                final drink = drinks[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(_iconForCategory(drink.category)),
                    ),
                    title: Text(
                      drink.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '${drink.nameTh}  •  ร้อน ${drink.basePrice} ฿ / เย็น ${drink.icedPrice} ฿',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'เลือก ${drink.name} (เดี๋ยวเพิ่มหน้าเลือกร้อน/เย็นใน Ticket #2)',
                          ),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
