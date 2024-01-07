import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../model/poli.dart';

class PoliService {
  Future<List<Poli>> listData() async {
    final Response response = await ApiClient().get('Poli');
    final List data = response.data as List;
    List<Poli> result = data.map((json) => Poli.fromJson(json)).toList();
    return result;
  }

  Future<Poli> simpan(Poli poli) async {
    var data = poli.toJson();
    final Response response = await ApiClient().post('Poli', data);
    Poli result = Poli.fromJson(response.data);
    return result;
  }

  Future<Poli> ubah(Poli poli, String id) async {
    var data = poli.toJson();
    final Response response = await ApiClient().put('Poli/${id}', data);
    print(response);
    Poli result = Poli.fromJson(response.data);
    return result;
  }

  Future<Poli> getById(String id) async {
    final Response response = await ApiClient().get('Poli/${id}');
    Poli result = Poli.fromJson(response.data);
    return result;
  }

  Future<Poli> hapus(Poli poli) async {
    final Response response = await ApiClient().delete('Poli/${poli.id}');
    Poli result = Poli.fromJson(response.data);
    return result;
  }
}
