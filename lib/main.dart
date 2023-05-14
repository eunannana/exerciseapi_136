import 'package:flutter/material.dart';
import 'package:exerciseapi_136/view/kategoriBarang/kategori_barang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anns Store',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: KategoriBarang(),
      debugShowCheckedModeBanner: false,
    );
  }
}