import 'package:baitapontuan10/widget/list_customers.dart';
import 'package:baitapontuan10/widget/orders.dart';
import 'package:baitapontuan10/widget/statistics.dart';

import 'package:baitapontuan10/widget/user_info.dart';
import 'package:flutter/material.dart';
import '../widget/drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thông Tin Cá Nhân'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              UserInfo(),
              SizedBox(
                height: 20,
              ),
              Statistics(),
              SizedBox(height: 20),
              Orders(),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_bag), label: 'Shop'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cá nhân'),
      //   ],
      // ),
    );
  }
}
