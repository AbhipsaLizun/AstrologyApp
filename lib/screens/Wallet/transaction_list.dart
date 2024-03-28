import 'package:astrology_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import '../../models/transactions_model.dart';
import '../../utils/properties.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 48, 0, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Transactions",
                    style: TextStyle(color: textColor(), fontSize: 24),
                  ),
                ],
              ),
              const Flexible(child: TransactionScreen())
            ],
          ),
        ),
      ),
    );
  }
}
