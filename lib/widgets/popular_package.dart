import 'package:flutter/material.dart';

class PopularPackage extends StatelessWidget {
  const PopularPackage({
    Key? key,
    required this.title,
    required this.noTests,
    required this.expense,
  }) : super(key: key);

  final String title;
  final int noTests;
  final double expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black26,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconAndLabelRow(),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            buildTestsList(),
            const SizedBox(height: 10),
            buildPriceRow(),
          ],
        ),
      ),
    );
  }

  Widget buildIconAndLabelRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.health_and_safety_outlined, size: 70),
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: const Center(
            child: Text("Safe"),
          ),
        ),
      ],
    );
  }

  Widget buildTestsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Includes $noTests tests", style: const TextStyle(color: Colors.grey)),
        const Text("\u2022 Blood Glucose Fasting", style: TextStyle(color: Colors.grey)),
        const Text("\u2022 Liver Function Test", style: TextStyle(color: Colors.grey)),
        InkWell(
          child: const Text("View More", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)),
          onTap: () {},
        ),
      ],
    );
  }

  Widget buildPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "\u20B9 $expense/-",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(27, 169, 181, 1)),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black26,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Center(child: Text("Add to cart")),
          ),
        ),
      ],
    );
  }
}
