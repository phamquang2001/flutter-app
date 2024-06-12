import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/menu.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:get/get.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final String title;
  final FloatingActionButton? floatingActionButton;

  const Layout({
    super.key,
    required this.body,
    required this.title,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Get.offAllNamed(AppPaths.home);
            },
          ),
        ],
      ),
      floatingActionButton: floatingActionButton,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];

                return ListTile(
                  leading: item.icon,
                  title: Text(item.label),
                  onTap: () {
                    Get.offAllNamed(item.pathname);
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Đăng xuất"),
              onTap: () {
                AuthService.logout();
              },
            )
          ],
        ),
      ),
      body: body,
    );
  }
}
