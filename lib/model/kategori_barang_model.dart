import 'dart:convert';

class KategoriBarangModel {
  final String nama;
  KategoriBarangModel({
    required this.nama,
  });

  KategoriBarangModel copyWith({
    String? nama,
  }) {
    return KategoriBarangModel(
      nama: nama ?? this.nama,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory KategoriBarangModel.fromJson(String source) => KategoriBarangModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'KategoriBarangModel(nama: $nama)';

  @override
  bool operator ==(covariant KategoriBarangModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nama == nama;
  }

  @override
  int get hashCode => nama.hashCode;
}
