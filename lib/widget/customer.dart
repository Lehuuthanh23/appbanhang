import 'package:flutter/material.dart';

class customerWidget extends StatefulWidget {
  customerWidget({
    super.key,
    required this.entry,
  });
  var entry;

  @override
  State<customerWidget> createState() => _customerWidgetState();
}

class _customerWidgetState extends State<customerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListTile(
              title: Text(widget.entry.title),
              subtitle: Text(widget.entry.desc),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  widget.entry.img,
                  width: 80,
                ),
              ),
            )),
      ),
    );
  }
}
