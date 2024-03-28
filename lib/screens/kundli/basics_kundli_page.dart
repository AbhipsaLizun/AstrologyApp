import 'package:flutter/material.dart';

import '../profile/user_all_calss.dart';

class BasicsKundliPage extends StatefulWidget {
  const BasicsKundliPage({super.key});

  @override
  State<BasicsKundliPage> createState() => _BasicsKundliPageState();
}

class _BasicsKundliPageState extends State<BasicsKundliPage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            const KPage(text: 'Basic Details'),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text("Name ", style: TextStyle(color: Colors.white)),
                        Text("Dev", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Date ", style: TextStyle(color: Colors.white)),
                        Text("23 January 1994",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Time ", style: TextStyle(color: Colors.white)),
                        Text("8:16  AM", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Time ", style: TextStyle(color: Colors.white)),
                        Text("8:16  AM", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Time ", style: TextStyle(color: Colors.white)),
                        Text("8:16  AM", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Manglik Analysis'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'No',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Since mars is in ninth house and in \ncapricorn sign person is Non Manglik.',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Panchang Details'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text("Tithi ", style: TextStyle(color: Colors.white)),
                        Text("ShuklaEkadashi",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Karan ", style: TextStyle(color: Colors.white)),
                        Text("Vishti", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Yog ", style: TextStyle(color: Colors.white)),
                        Text("Brahma", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Panchang Details'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text("Varna ", style: TextStyle(color: Colors.white)),
                        Text("Shudra", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Vashya", style: TextStyle(color: Colors.white)),
                        Text("Chatushpada",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Yoni", style: TextStyle(color: Colors.white)),
                        Text("Sarpa", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Gan", style: TextStyle(color: Colors.white)),
                        Text("Manav", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Nadi", style: TextStyle(color: Colors.white)),
                        Text("Antya", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Sign", style: TextStyle(color: Colors.white)),
                        Text("Taurus", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Sign Lord",
                            style: TextStyle(color: Colors.white)),
                        Text("Venus", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
