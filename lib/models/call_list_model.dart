import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';

class CallList {
  late final String title, date, time, callId;
  late final double amount;

  CallList({
    required this.title,
    required this.date,
    required this.time,
    required this.callId,
    required this.amount,
  });
}

final List<CallList> callList = [
  CallList(
      title: "Call with Astrologer For 13 mins",
      date: "13 may 23",
      time: "2:45 PM",
      callId: "#Call_NEW523520",
      amount: 10),
  CallList(
      title: "Call with Astrologer For 23 mins",
      date: "13 may 23",
      time: "2:45 PM",
      callId: "#Call_NEW523520",
      amount: 19),
  CallList(
      title: "Call with Astrologer For 23 mins",
      date: "13 may 23",
      time: "2:45 PM",
      callId: "#Call_NEW523520",
      amount: 30),
  CallList(
      title: "Call with Astrologer For 23 mins",
      date: "13 may 23",
      time: "2:45 PM",
      callId: "#Call_NEW523520",
      amount: 25),
];

class CallListContent extends StatefulWidget {
  const CallListContent(
      {super.key,
      required,
      required this.title,
      required this.date,
      required this.time,
      required this.callId,
      required this.amount});
  final String title, date, time, callId;
  final double amount;

  @override
  State<CallListContent> createState() => _CallListContentState();
}

class _CallListContentState extends State<CallListContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            border: Border.symmetric(
                horizontal:
                    BorderSide(color: Color.fromARGB(255, 55, 55, 55)))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(color: textColor(), fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "${widget.date} , ${widget.time}",
                style: const TextStyle(color: Colors.grey, fontSize: 10),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.callId,
                      style: const TextStyle(color: Colors.grey, fontSize: 10)),
                  Text("₹ ${widget.amount.toString()}",
                      style: const TextStyle(color: Colors.green, fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
