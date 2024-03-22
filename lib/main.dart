import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

// The main function is the starting point of all our flutter apps
//The runApp is the widget that is called when our app loads
void main() {
  runApp(
    const myApp()
  );
}

// types of widget
// 1. stateless widget
// 2. stateful widget

// state
// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
Widget build(BuildContext context){
  return const MaterialApp(home: CurrencyConverterMaterialPage(),);
}
}
