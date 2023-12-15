import 'package:flutter/material.dart';

class ScheduleButton extends StatelessWidget {
  const ScheduleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your onTap functionality here
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(16, 33, 125, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: const Text(
            "Schedule",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
