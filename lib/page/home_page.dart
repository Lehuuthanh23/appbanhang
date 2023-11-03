import 'package:baitapontuan10/model/ImgInfo.dart';
import 'package:baitapontuan10/widget/PhoneInfo.dart';
import 'package:baitapontuan10/widget/drawer.dart';
import 'package:baitapontuan10/widget/list_customers.dart';
import 'package:baitapontuan10/widget/listvoucher.dart';
import 'package:baitapontuan10/widget/voucher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ImgInfo> lstImg = [
    ImgInfo(
        caption: "Điện thoại 1",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/670/10044325-dien-thoai-iphone-11-128gb-xanh-la-1.jpg"),
    ImgInfo(
        caption: "Điện thoại 2",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/691/10047356-dien-thoai-xiaomi-redmi-9a-2gb-32gb-xanh-la-1.jpg"),
    ImgInfo(
        caption: "Điện thoại 3",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/670/10044325-dien-thoai-iphone-11-128gb-xanh-la-1.jpg"),
    ImgInfo(
        caption: "Điện thoại 4",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/691/10047356-dien-thoai-xiaomi-redmi-9a-2gb-32gb-xanh-la-1.jpg"),
    ImgInfo(
        caption: "Điện thoại 5",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/670/10044325-dien-thoai-iphone-11-128gb-xanh-la-1.jpg"),
    ImgInfo(
        caption: "Điện thoại 6",
        path:
            "https://cdn.nguyenkimmall.com/images/detailed/691/10047356-dien-thoai-xiaomi-redmi-9a-2gb-32gb-xanh-la-1.jpg"),
  ];
  List<String> lst = [
    "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/10/banner/IP15-720-220-720x220-6.png",
    "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/10/banner/vivo-v29-720-220-720x220-3.png",
    "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/11/banner/M54-720-220-720x220.png",
    "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/10/banner/LAP-GAMING-720-220-720x220.png",
    "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/11/banner/Smartwatch-720-220-720x220-2.png"
  ];
  List<PhoneInfo> lstPhoneInfo = [
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-pink-thumb-600x600.jpeg",
        ttchitiet: "OPPO Find N3 Flip 5G Hồng",
        gia: "22.990.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/306994/samsung-galaxy-s23-fe-xanh-thumb-600x600.jpg",
        ttchitiet: "Samsung Galaxy S23 FE 5G",
        gia: "13.890.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/309864/vivo-v29e-black-thumb-600x600.jpg",
        ttchitiet: "vivo V29e 5G 12GB",
        gia: "9.490.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-pink-thumb-600x600.jpeg",
        ttchitiet: "OPPO Find N3 Flip 5G Hồng",
        gia: "22.990.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/306994/samsung-galaxy-s23-fe-xanh-thumb-600x600.jpg",
        ttchitiet: "Samsung Galaxy S23 FE 5G",
        gia: "13.890.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/309864/vivo-v29e-black-thumb-600x600.jpg",
        ttchitiet: "vivo V29e 5G 12GB",
        gia: "9.490.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/309864/vivo-v29e-black-thumb-600x600.jpg",
        ttchitiet: "vivo V29e 5G 12GB",
        gia: "9.490.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/317981/oppo-find-n3-flip-pink-thumb-600x600.jpeg",
        ttchitiet: "OPPO Find N3 Flip 5G Hồng",
        gia: "22.990.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/306994/samsung-galaxy-s23-fe-xanh-thumb-600x600.jpg",
        ttchitiet: "Samsung Galaxy S23 FE 5G",
        gia: "13.890.000"),
    const PhoneInfo(
        img:
            "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/309864/vivo-v29e-black-thumb-600x600.jpg",
        ttchitiet: "vivo V29e 5G 12GB",
        gia: "9.490.000"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text(
              "Trang chủ",
            ),
          ),
          automaticallyImplyLeading: false),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                hintText: 'Nhập tên sản phẩm cần tìm kiếm',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
            ),
            Image.network(
              "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/11/banner/Banner-big--1920x450-1920x450-2.jpg",
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
              items: lst.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.network(
                        i,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                "https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/10/banner/Deal-ngon-tgdd-1200x120-1.png"),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: lstPhoneInfo
                      .map((e) => PhoneInfo(
                          img: e.img, ttchitiet: e.ttchitiet, gia: e.gia))
                      .toList()),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: const [
              Text(
                "Sản phẩm nổi bật",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ]),
            const SizedBox(
              height: 5,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
              items: lstPhoneInfo.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return i;
                  },
                );
              }).toList(),
            ),
            Row(children: const [
              Text(
                "Danh sách voucher",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ]),
            const list_Voucher(),
            Row(children: const [
              Text(
                "Danh sách khách hàng",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ]),
            const ListCustomers(),
          ],
        ),
      ),
    );
  }
}

