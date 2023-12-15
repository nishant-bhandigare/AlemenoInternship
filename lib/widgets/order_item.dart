import 'package:alemeno/models/tests.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.item});

  final Test item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
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
                Text("₹${item.newExpense}/-",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(27, 169, 181, 1),
                    )),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                Text("₹${item.oldExpense}",
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough, fontSize: 10)),
              ],
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(16, 33, 125, 1), width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.delete_outline_rounded),
                  Text("Remove", style: TextStyle(color: Color.fromRGBO(16, 33, 125, 1),),),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(16, 33, 125, 1), width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.file_upload_outlined),
                  Text("Upload Prescription (Optional)", style: TextStyle(color: Color.fromRGBO(16, 33, 125, 1),),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
