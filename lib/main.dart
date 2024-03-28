
import 'package:ecom_app/screen/product_screen.dart';
import 'package:ecom_app/screen/cart_screen.dart';
import 'package:ecom_app/screen/homescreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routes:{
          '/':(context) => const Homescreen(),
          'product':(context) => const ProductScreen(),
          'cart': (context) => const CartScreen(),
        }
    ),
  );
}

