import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/treatment_place/search_treatment_place.dart';
import 'package:flutter_application_1/models/treatment_place/treatment_place_entity.dart';

class TreatmentPlaceService {
  TreatmentPlaceService._();

  static final dio = DioClient().dio;

  static Future<List<TreatmentPlaceEntity>> getAll(SearchTreatmentPlace data) async {
    final response = await dio.post(
      "/treatment_place/get-list",
      data: data.toJson(),
    );

    List<dynamic> dataList = response.data['data'];
    List<TreatmentPlaceEntity> list = dataList.map((e) => TreatmentPlaceEntity.fromJson(e)).toList();

    return list;
  }
}
