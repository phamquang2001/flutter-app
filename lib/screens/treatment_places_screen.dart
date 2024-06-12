import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/layout.dart';
import 'package:flutter_application_1/components/treatment_place_advanded_search.dart';
import 'package:flutter_application_1/components/treatment_place_detail.dart';
import 'package:flutter_application_1/controllers/treatment_place.controller.dart';
import 'package:get/get.dart';

class TreatmentPlacesScreen extends GetView<TreatmentPlaceController> {
  const TreatmentPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "Danh sách nơi cai nghiện",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const FractionallySizedBox(
                heightFactor: 0.8,
                widthFactor: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: TreatmentPlaceAdvancedSearch(),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.search),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listData.length,
          itemBuilder: (context, index) {
            final item = controller.listData[index];

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
      ),
    );
  }
}
