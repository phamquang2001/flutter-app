import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/drug_addict_detail.dart';
import 'package:flutter_application_1/components/layout.dart';
import 'package:flutter_application_1/models/drug_addict/drug_addict_entity.dart';
import 'package:flutter_application_1/models/drug_addict/search_drug_addict.dart';
import 'package:flutter_application_1/services/drug_addict.service.dart';

class DrugAddictsScreen extends StatefulWidget {
  const DrugAddictsScreen({super.key});

  @override
  State<DrugAddictsScreen> createState() => _DrugAddictsScreenState();
}

class _DrugAddictsScreenState extends State<DrugAddictsScreen> {
  List<DrugAddictEntity> listData = [];

  @override
  void initState() {
    getData();

    super.initState();
  }

  Future<void> getData() async {
    try {
      List<DrugAddictEntity> data = await DrugAddictService.getAll(SearchDrugAddict());

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
      title: "Danh sách đối tượng",
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
                          child: DrugAddictDetail(data: item),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Avatar', style: TextStyle(fontSize: 12)),
                                Text('đối tượng', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Họ và tên: ${item.fullName}', style: const TextStyle(fontSize: 16)),
                                Text('Số CCCD: ${item.identifyNumber}', style: const TextStyle(fontSize: 16)),
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
                            'Người giám sát: ${item.police?.fullName ?? ""}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Nơi cai nghiện: ${item.treatmentPlace?.fullName ?? ""}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Thường trú: ${item.fullPermanent}',
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
