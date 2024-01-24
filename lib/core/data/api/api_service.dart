// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@LazySingleton()
class APIService {
  late Dio dio;
  APIService() {
    dio = Dio();
  }
  String baseUrk = 'https://api.thecatapi.com/v1';
  Future<List<Map<String, dynamic>>> get(String end) async {
    var re = await dio.get('$baseUrk$end');
    return re.data;
  }
}
