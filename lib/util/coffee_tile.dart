import 'package:flutter/material.dart';
import 'package:flutter_application_1/icons/app_icons.dart';
import 'package:flutter_application_1/pages/coffee/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: coffeeList.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
      separatorBuilder: (context, index) {
        return const SizedBox(width: 25);
      },
      itemBuilder: (BuildContext context, int index) {
        final Coffee coffee = coffeeList[index];
        print('index: $index, name: ${coffee.name}');
        return CoffeePreview(coffee: coffee);
      },
    );
  }
}

class CoffeePreview extends StatelessWidget {
  const CoffeePreview({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black54,
      ),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Image.asset(
              coffee.image,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(coffee.name),
          Text('${coffee.price} rub'),
          Text(coffee.description),
          Icon(Icons.add),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween),
        ],
      ),
    );
  }
}
