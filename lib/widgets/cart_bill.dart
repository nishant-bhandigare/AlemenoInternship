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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("M.R.P. Total"),
              Text('${totalExpense + 400}'), // Corrected this line to convert totalExpense to a string
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Discount"),
              Text("400"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Amount to be paid", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromRGBO(16, 33, 125, 1),)),
              Text("₹ $totalExpense/-", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromRGBO(16, 33, 125, 1),)),
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            children: [
              Text("Total Savings"),
              SizedBox(width: 30),
              Text("₹ 400/-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromRGBO(16, 33, 125, 1),) ),
            ],
          ),
        ],
      ),
    );
  }
}
