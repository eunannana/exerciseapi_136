import 'package:exerciseapi_136/controller/kategori_barang_controller.dart';
import 'package:flutter/material.dart';
import 'package:exerciseapi_136/view/kategoriBarang/kategori_barang.dart';

class updateKategoriBarang extends StatefulWidget {
  final int? id;
  final String? prevname;
  const updateKategoriBarang({super.key, this.id, this.prevname});

  @override
  State<updateKategoriBarang> createState() => _updateKategoriBarangState();
}

class _updateKategoriBarangState extends State<updateKategoriBarang> {
String? nama;
final kategoriBarangController = KategoriBarangController();

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Category'),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Category Name',
                labelText: 'Category Name',
              ),
              onChanged: (value) {nama = value;},
              initialValue: widget.prevname,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Category Name is required';
                }
                else if(value == widget.prevname){
                  return 'Category name can not be same with the previous';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  kategoriBarangController.updateKategoriBarang(widget.id!, nama!);
                   Navigator.pop(context,true);
                  var snackBar =
                      const SnackBar(content: Text('Successfully update data!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}