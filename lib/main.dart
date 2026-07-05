import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Home_page.dart';
import 'package:shop_app/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Lato',

          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1),
            primary: Color.fromRGBO(254, 206, 1, 1),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
            titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.black),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
