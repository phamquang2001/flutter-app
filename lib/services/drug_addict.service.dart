import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/drug_addict/drug_addict_entity.dart';
import 'package:flutter_application_1/models/drug_addict/search_drug_addict.dart';

class DrugAddictService {
  DrugAddictService._();

  static final dio = DioClient().dio;

  static Future<List<DrugAddictEntity>> getAll(SearchDrugAddict data) async {
    final response = await dio.post(
      "/drug-addict/get-list",
      data: data.toJson(),
    );

    List<dynamic> dataList = response.data['data'];
    List<DrugAddictEntity> list = dataList.map((e) => DrugAddictEntity.fromJson(e)).toList();

    return list;
  }
}
