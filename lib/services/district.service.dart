import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/common/district_entity.dart';

class DistrictService {
  DistrictService._();

  static final dio = DioClient().dio;

  static Future<List<DistrictEntity>> getAll(int cityId) async {
    final response = await dio.post(
      "/district/get-list",
      data: {
        "page": 1,
        "size": 100,
        "cityId": cityId,
        "code": "",
        "fullName": "",
        "status": "ACTIVE",
      },
    );

    List<dynamic> dataList = response.data['data'];
    List<DistrictEntity> list = dataList.map((e) => DistrictEntity.fromJson(e)).toList();

    return list;
  }
}
