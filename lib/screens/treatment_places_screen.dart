import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/layout.dart';
import 'package:flutter_application_1/components/treatment_place_detail.dart';
import 'package:flutter_application_1/models/treatment_place/search_treatment_place.dart';
import 'package:flutter_application_1/models/treatment_place/treatment_place_entity.dart';
import 'package:flutter_application_1/services/treatment_place.service.dart';

class TreatmentPlacesScreen extends StatefulWidget {
  const TreatmentPlacesScreen({super.key});

  @override
  State<TreatmentPlacesScreen> createState() => TreatmentPlacesScreenState();
}

class TreatmentPlacesScreenState extends State<TreatmentPlacesScreen> {
  List<TreatmentPlaceEntity> listData = [];

  @override
  void initState() {
    getData();

    super.initState();
  }

  Future<void> getData() async {
    try {
      List<TreatmentPlaceEntity> data = await TreatmentPlaceService.getAll(SearchTreatmentPlace());

      setState(() {
        listData = data;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "Danh sách nơi cai nghiện",
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          final item = listData[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.8,
                      widthFactor: 1,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TreatmentPlaceDetail(data: item),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey,
                            child: Text('Logo', style: TextStyle(fontSize: 12)),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.fullName,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1, thickness: 1),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Người đứng đầu: ${item.leaderFullName}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Số điện thoại: ${item.leaderPhoneNumber}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Địa chỉ: ${item.fullAddress}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
