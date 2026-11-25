import 'package:material_ui/material_ui.dart';
import 'package:tanuki_cafe/screens/menu_screen.dart';

void main() {
  runApp(const TanukiCafeApp());
}

class TanukiCafeApp extends StatelessWidget {
  const TanukiCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TANUKI Cafe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6F4E37), // สีน้ำตาลกาแฟ
        ),
      ),
      home: const MenuScreen(),
    );
  }
}
