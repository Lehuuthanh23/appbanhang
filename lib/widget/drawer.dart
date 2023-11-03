import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Nguyễn Văn A",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  accountEmail: Text(
                    "nguyenvana@gmail.com",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Trang chủ"),
                  onTap: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushNamed(context, '/index');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Trang cá nhân"),
                  onTap: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
