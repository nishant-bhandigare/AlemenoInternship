import 'package:flutter/material.dart';

class CartBill extends StatelessWidget {
  const CartBill({Key? key, required this.totalExpense}) : super(key: key);

  final int totalExpense;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildRow("M.R.P. Total", '${totalExpense}'),
          buildRow("Discount", totalExpense == 0 ? "₹ 0" : "₹ 400/-"),
          buildBoldRow("Amount to be paid", totalExpense == 0 ? "₹ 0" : "₹ ${totalExpense - 400}/-"),
          const SizedBox(height: 10),
          buildBoldRow("Total Savings", totalExpense == 0 ? "₹ 0" : "₹ 400/-"),
        ],
      ),
    );
  }

  Widget buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }

  Widget buildBoldRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromRGBO(16, 33, 125, 1),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromRGBO(16, 33, 125, 1),
          ),
        ),
      ],
    );
  }
}
