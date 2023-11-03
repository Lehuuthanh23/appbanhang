import 'package:baitapontuan10/widget/voucher.dart';
import 'package:flutter/material.dart';

class list_Voucher extends StatelessWidget {
  const list_Voucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
            Voucher(),
          ],
        ),
      ),
    );
  }
}
