import 'package:alemeno/models/tests.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.item}) : super(key: key);

  final Test item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black45,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  "₹${item.newExpense}/-",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 169, 181, 1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  "₹${item.oldExpense}",
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            buildButtonRow(Icons.delete_outline_rounded, "Remove", 120),
            const SizedBox(height: 5),
            buildButtonRow(Icons.file_upload_outlined, "Upload Prescription (Optional)", 250),
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow(IconData icon, String label, double w) {
    return Container(
      width: w,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(16, 33, 125, 1), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: Color.fromRGBO(16, 33, 125, 1)),
          Text(
            label,
            style: TextStyle(color: Color.fromRGBO(16, 33, 125, 1)),
          ),
        ],
      ),
    );
  }
}
