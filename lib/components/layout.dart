import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/menu.dart';
import 'package:flutter_application_1/constants/paths.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final String title;

  const Layout({
    super.key,
    required this.body,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Future<void> handleLogout() async {
      await AppSharedPref.clear();

      context.replace("/${AppPaths.login}");
    }

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
              context.go(AppPaths.home);
            },
          ),
        ],
      ),
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
                    context.go("/${item.pathname}");
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Đăng xuất"),
              onTap: () {
                handleLogout();
              },
            )
          ],
        ),
      ),
      body: body,
    );
  }
}
