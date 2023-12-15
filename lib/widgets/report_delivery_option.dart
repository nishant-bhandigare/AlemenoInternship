import 'package:flutter/material.dart';

class ReportDeliveryWidget extends StatefulWidget {
  @override
  _ReportDeliveryWidgetState createState() => _ReportDeliveryWidgetState();
}

class _ReportDeliveryWidgetState extends State<ReportDeliveryWidget> {
  bool isHardCopySelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleHardCopySelection,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildRadio(),
            Expanded(
              child: buildReportDetails(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRadio() {
    return Radio(
      value: isHardCopySelected,
      groupValue: isHardCopySelected,
      onChanged: (value) {
        setState(() {
          isHardCopySelected = value as bool;
        });
      },
    );
  }

  Widget buildReportDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hard copy of reports", style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
        Text(
          "Reports will be delivered within 3-4 working days. Hard copy charges are non-refundable once the reports have been dispatched.",
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 5),
        Text(
          "₹150 per person",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  void toggleHardCopySelection() {
    setState(() {
      isHardCopySelected = !isHardCopySelected;
    });
  }
}
