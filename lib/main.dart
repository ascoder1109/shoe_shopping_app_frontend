import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';
// import 'package:shopping_app/global_variables.dart';
import 'package:shopping_app/home_page.dart';
// import 'package:shopping_app/product_details_page.dart';

void main() {
  runApp(const MyShoppingApp());
}

class MyShoppingApp extends StatelessWidget {
  const MyShoppingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: "My Shopping App",
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(255, 242, 0, 1),
              primary: const Color.fromRGBO(255, 242, 0, 1),
            ),
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                prefixIconColor: Color.fromRGBO(119, 119, 119, 1)),
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            useMaterial3: true),
        home: const HomePage(),
        // home: ProductDetailsPage(
        //   product: products[0],
        // ),
      ),
    );
  }
}
