import 'package:flutter/material.dart';

class ScheduleButton extends StatelessWidget{
  const ScheduleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 10,),
        decoration: BoxDecoration(
          color: Color.fromRGBO(16, 33, 125, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Schedule", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
        ),
      ),
    );
  }

}