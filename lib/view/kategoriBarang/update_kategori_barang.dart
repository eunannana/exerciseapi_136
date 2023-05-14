import 'package:flutter/material.dart';
import 'package:exerciseapi_136/view/kategoriBarang/kategori_barang.dart';

class updateKategoriBarang extends StatefulWidget {
  const updateKategoriBarang({super.key});

  @override
  State<updateKategoriBarang> createState() => _updateKategoriBarangState();
}

class _updateKategoriBarangState extends State<updateKategoriBarang> {
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
              onChanged: (value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Category Name is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
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