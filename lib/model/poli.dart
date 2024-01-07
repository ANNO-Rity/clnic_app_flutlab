class Poli {
  String? id;
  String namaPoli;

  Poli({this.id, required this.namaPoli});
  factory Poli.fromJson(Map<String, dynamic> json) =>
      Poli(id: json["id"], namaPoli: json["Nama_Poli"]);
  Map<String, dynamic> toJson() => {"Nama_Poli": namaPoli};
}
