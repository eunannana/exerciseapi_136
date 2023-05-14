import 'dart:convert';

class KategoriBarangModel {
  final String nama;
  var id;
  KategoriBarangModel({
    required this.nama,
    this.id,
  });

  KategoriBarangModel copyWith({
    String? nama,
    int? id,
  }) {
    return KategoriBarangModel(
      nama: nama ?? this.nama,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
    };
  }

  factory KategoriBarangModel.fromMap(Map<String, dynamic> map) {
    return KategoriBarangModel(
      nama: map['nama'] as String,
      id: map['id_kategori_barang']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory KategoriBarangModel.fromJson(String source) => KategoriBarangModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'KategoriBarangModel(nama: $nama, id: $id)';

  @override
  bool operator ==(covariant KategoriBarangModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nama == nama &&
      other.id == id;
  }

  @override
  int get hashCode => nama.hashCode;
}
