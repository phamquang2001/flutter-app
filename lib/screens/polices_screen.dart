import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/layout.dart';
import 'package:flutter_application_1/components/police_advanced_search.dart';
import 'package:flutter_application_1/components/police_detail.dart';
import 'package:flutter_application_1/controllers/police.controller.dart';
import 'package:get/get.dart';

class PolicesScreen extends GetView<PoliceController> {
  const PolicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "Danh sách cảnh sát",
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
                    child: PoliceAdvancedSearch(),
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
            final police = controller.listData[index];

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
                            child: PoliceDetail(data: police),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Avatar', style: TextStyle(fontSize: 12)),
                              Text('cảnh sát', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Họ và tên: ${police.fullName}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Số CCCD: ${police.identifyNumber}'),
                              Text('Đơn vị công tác: ${police.workPlace}'),
                            ],
                          ),
                        ),
                      ],
                    ),
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
