import 'package:baitapontuan10/model/customer.dart';
import 'package:flutter/material.dart';
import 'customer.dart';

class ListCustomers extends StatefulWidget {
  const ListCustomers({super.key});

  @override
  State<ListCustomers> createState() => _ListCustomersState();
}

List<Customer> viewEntry = [
  Customer(
      img:
          "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
      title: "Khách hàng 1",
      desc: "Tóm tắt 1"),
  Customer(
      img:
          "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
      title: "Khách hàng 2",
      desc: "Tóm tắt2"),
  Customer(
      img:
          "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
      title: "Khách hàng 3",
      desc: "Tóm tắt 3"),
  Customer(
      img:
          "https://anhdep123.com/wp-content/uploads/2021/02/anh-avatar-hai-huoc.jpg",
      title: "Khách hàng 4",
      desc: "Tóm tắt 4"),
];

class _ListCustomersState extends State<ListCustomers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 300,
      child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              children: viewEntry
                  .map((entry) => customerWidget(entry: entry))
                  .toList())),
    );
  }
}
