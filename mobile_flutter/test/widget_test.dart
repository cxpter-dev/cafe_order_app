import 'package:flutter_test/flutter_test.dart';
import 'package:tanuki_cafe/data/menu_data.dart';
import 'package:tanuki_cafe/main.dart';

void main() {
  testWidgets('TANUKI Cafe menu screen renders categories and drinks', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TanukiCafeApp());

    // ตรวจชื่อร้านและแท็บหมวดหมู่ทั้ง 3 หมวด
    expect(find.text('TANUKI Cafe'), findsOneWidget);
    expect(find.text('Coffee (กาแฟ)'), findsOneWidget);
    expect(find.text('Milk (นม)'), findsOneWidget);
    expect(find.text('Tea (ชา)'), findsOneWidget);

    // ตรวจเมนูในแท็บแรก (Coffee)
    expect(find.text('Espresso'), findsOneWidget);
    expect(find.text('Americano'), findsOneWidget);

    // จำลองนิ้วลูกค้ากดสลับไปแท็บ Tea แล้วตรวจว่าเจอ Matcha Latte
    await tester.tap(find.text('Tea (ชา)'));
    await tester.pumpAndSettle();
    expect(find.text('Matcha Latte'), findsOneWidget);
  });

  test('TANUKI menu has 10 drinks and iced price adds 10 THB', () {
    expect(tanukiMenu.length, 10);

    final espresso = tanukiMenu.firstWhere((d) => d.id == 'coffee-espresso');
    expect(espresso.icedPrice, 60);

    final matcha = tanukiMenu.firstWhere((d) => d.id == 'tea-matcha');
    expect(matcha.icedPrice, 80);
  });
}
