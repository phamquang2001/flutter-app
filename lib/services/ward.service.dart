import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/common/ward_entity.dart';

class WardService {
  WardService._();

  static final dio = DioClient().dio;

  static Future<List<WardEntity>> getAll(int cityId, int districtId) async {
    final response = await dio.post(
      "/ward/get-list",
      data: {
        "page": 1,
        "size": 100,
        "cityId": cityId,
        "districtId": districtId,
        "code": "",
        "fullName": "",
        "status": "ACTIVE",
      },
    );

    List<dynamic> dataList = response.data['data'];
    List<WardEntity> list = dataList.map((e) => WardEntity.fromJson(e)).toList();

    return list;
  }
}
