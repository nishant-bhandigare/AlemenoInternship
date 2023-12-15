import 'package:alemeno/models/tests.dart';
import 'package:alemeno/widgets/cart_bill.dart';
import 'package:alemeno/widgets/date_picker.dart';
import 'package:alemeno/widgets/order_item.dart';
import 'package:alemeno/widgets/report_delivery_option.dart';
import 'package:alemeno/widgets/schedule_button.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key, required this.cartItems});

  final List cartItems;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int totalExpense = 0; // Updated total expense state

  void updateTotalExpense() {
    int updatedTotalExpense = 0;
    int discount = 400;

    for (Test test in widget.cartItems) {
      updatedTotalExpense += test.newExpense;
    }

    // updatedTotalExpense -= discount;

    setState(() {
      totalExpense = updatedTotalExpense;
    });
  }

  @override
  void initState() {
    super.initState();
    updateTotalExpense(); // Initial update when the widget is created
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text("My Cart", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Order Review", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color.fromRGBO(16, 33, 125, 1),)),
              const SizedBox(height: 10),
              if (widget.cartItems.isEmpty)
                Container(
                  height: 220,
                  child: const Center(
                    child: Text("Your Cart Is Empty"),
                  ),
                ),
              for (final orderItem in widget.cartItems)
                OrderItem(item: orderItem),
              DatePicker(),
              CartBill(totalExpense: totalExpense),
              ReportDeliveryWidget(),
              const ScheduleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
