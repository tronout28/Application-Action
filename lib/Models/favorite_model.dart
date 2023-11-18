class Favorite {
  int id;
  String nama;
  double harga;
  String deskripsi;
  String foto;
  bool isFavorite;

  Favorite({
    required this.id,
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.foto,
    this.isFavorite = false,
  });
}