import 'package:flutter/material.dart';
import 'screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(236, 246, 56, 164),
          secondary: Color.fromARGB(255, 0, 0, 0),
          tertiary: Color.fromARGB(255, 14, 247, 255),
          background: const Color.fromARGB(255, 255, 194, 14),
        ),
      ),
      home: ProductsOverviewScreen(),
      routes: {},
    );
  }
}
