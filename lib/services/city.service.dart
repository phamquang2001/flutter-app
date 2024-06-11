import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/common/city_entity.dart';

class CityService {
  CityService._();

  static final dio = DioClient().dio;

  static Future<List<CityEntity>> getAll() async {
    final response = await dio.post("/city/get-list", data: {
      "page": 1,
      "size": 100,
      "status": "ACTIVE",
    });

    List<dynamic> dataList = response.data['data'];
    List<CityEntity> list = dataList.map((e) => CityEntity.fromJson(e)).toList();

    return list;
  }
}
