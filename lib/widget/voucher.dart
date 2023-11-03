import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        //Thêm màu và bo gó cho container
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.JTeBTfavUzbUMwaGSrsubgHaFj&pid=Api&P=0&h=220",
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(child: Text("Giảm 10%")),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Lưu"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor:
                        Colors.black, //change background color of button
                    backgroundColor: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
