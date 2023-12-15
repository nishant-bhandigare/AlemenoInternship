import 'package:flutter/material.dart';

class PopularPackage extends StatelessWidget {
  PopularPackage({
    super.key,
    required this.title,
    required this.noTests,
    required this.expense,
  });

  final String title;
  final int noTests;
  final double expense;

  final listTests = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.health_and_safety_outlined,size: 70,),
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
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            Text("Includes $noTests tests", style: const TextStyle(color: Colors.grey)),
            const Text("\u2022 Blood Glucose Fasting",style: TextStyle(color: Colors.grey)),
            const Text("\u2022 Liver Function Test",style: TextStyle(color: Colors.grey)),
            InkWell(child: const Text("View More",style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)), onTap: (){}),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\u20B9 $expense/-", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(27, 169, 181, 1),)),
                InkWell(
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
                  onTap: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
