import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:exerciseapi_136/controller/kategori_barang_controller.dart';
import 'package:exerciseapi_136/model/kategori_barang_model.dart';
import 'package:exerciseapi_136/view/kategoriBarang/add_kategori_barang.dart';
import 'package:exerciseapi_136/controller/kategori_barang_controller.dart';

class KategoriBarang extends StatefulWidget {
  const KategoriBarang({super.key});

  @override
  State<KategoriBarang> createState() => _KategoriBarangState();
}

class _KategoriBarangState extends State<KategoriBarang> {
  final kategoriBarangController = KategoriBarangController();
  List<KategoriBarangModel> listKategoriBarang = [];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void getKategoriBarang() async{
    final kategoriBarang = await kategoriBarangController.getKategoriBarang();
    setState(() {
      listKategoriBarang = kategoriBarang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: SafeArea(child: ListView.builder(itemCount: listKategoriBarang.length,itemBuilder: (context, index){
        return Card(
          child: ListTile(
            title: Text(listKategoriBarang[index].nama),
            trailing: IconButton(onPressed: (){},
            icon: const Icon(Icons.edit),),
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => const AddKategoriBarang()));
      }),
    );
  }
}