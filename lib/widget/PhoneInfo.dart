import 'package:flutter/material.dart';

class PhoneInfo extends StatelessWidget {
  const PhoneInfo({
    super.key,
    required this.img,
    required this.ttchitiet,
    required this.gia,
  });
  final img;
  final ttchitiet;
  final gia;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey[300],
                child: const Text("Trả góp 0%"),
              ),
            ],
          ),
          Image.network(
            img,
            width: 150,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: ttchitiet,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                gia,
                style: const TextStyle(
                  color: Colors.red,
                  //fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                color: Colors.red[200],
                child: const Text("-5%"),
              )
            ]),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Xem chi tiết'),
          ),
        ],
      ),
    );
  }
}
