import 'package:flutter/material.dart';
import 'package:flutter_application_1/icons/app_icons.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  static const List items = [
    PngIcons.coffee,
    PngIcons.latte,
    PngIcons.milk,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
      separatorBuilder: (context, index) {
        return const SizedBox(width: 10);
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black54,
          ),
          child: Image.asset(items[index]),
        );
      },
    );
  }
}
