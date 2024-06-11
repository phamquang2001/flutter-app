import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/police/police_entity.dart';
import 'package:flutter_application_1/models/police/search_police.dart';

class PoliceService {
  PoliceService._();

  static final dio = DioClient().dio;

  static Future<List<PoliceEntity>> getAll(SearchPolice data) async {
    final response = await dio.post(
      "/police/get-list",
      data: data.toJson(),
    );

    List<dynamic> dataList = response.data['data'];

    List<PoliceEntity> list = dataList.map((e) => PoliceEntity.fromJson(e)).toList();

    return list;
  }
}
