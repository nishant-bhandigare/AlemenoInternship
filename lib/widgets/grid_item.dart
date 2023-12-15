import 'package:alemeno/models/tests.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.addToCart,
    required this.item,
  }) : super(key: key);

  final Test item;
  final void Function(Test item) addToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black26,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              item.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Includes ${item.noTests} tests"),
              const Icon(Icons.shield_outlined),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            "Get reports in ${item.delay} hours",
            style: const TextStyle(fontSize: 10),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "₹${item.newExpense}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              Text(
                "₹${item.oldExpense}",
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              addToCart(item);
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(16, 33, 125, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(child: Text("Add to Cart")),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color.fromRGBO(16, 33, 125, 1),
                width: 1.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text(
                  "View Details",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
