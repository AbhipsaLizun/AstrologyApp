import 'package:flutter/material.dart';

import '../profile/user_all_calss.dart';

class KPKundliPage extends StatefulWidget {
  const KPKundliPage({super.key});

  @override
  State<KPKundliPage> createState() => _KPKundliPageState();
}

class _KPKundliPageState extends State<KPKundliPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            const KPage(text: 'Ashtakvarga Chart '),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/charts.png',
              width: MediaQuery.of(context).size.width * 170,
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Ruling Planets'),
            const SizedBox(
              height: 10,
            ),
            DataTable(
              columnSpacing: 35,
              border: TableBorder.all(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                  borderRadius: BorderRadius.circular(15)),
              headingRowColor: MaterialStateProperty.all(Colors.blue),
              headingTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              columns: const [
                DataColumn(label: Text('--', textAlign: TextAlign.center)),
                DataColumn(
                  label: Text('Sign Lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Star Lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sub Lord', textAlign: TextAlign.center),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    'Mo',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
                  DataCell(Text('Venus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Rahu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mars',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  // DataCell(Text('1',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10))),
                  //DataCell(Text('6')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Asc',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mercury',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Rahu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Rahu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                ]),
                DataRow(cells: [
                  DataCell(Text('',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                ]),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Planets'),
            const SizedBox(
              height: 10,
            ),
            DataTable(
              columnSpacing: 15,
              border: TableBorder.all(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                  borderRadius: BorderRadius.circular(15)),
              headingRowColor: MaterialStateProperty.all(Colors.blue),
              headingTextStyle: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 10,
              ),
              columns: const [
                DataColumn(label: Text('Planet', textAlign: TextAlign.center)),
                DataColumn(
                  label: Text('Cusp', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sign', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sign Lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Star lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sub Lord', textAlign: TextAlign.center),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    'Sun',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Capricorn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Su',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('6')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Moon',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('12',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Taurus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('9')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Mars',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('8',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Capricorn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Su',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ju',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rahu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Scorpio',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ma',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jupiter',
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Libra',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ra',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Saturn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Aquarius',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ma',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const KPage(text: 'Cusp'),
            const SizedBox(
              height: 10,
            ),
            DataTable(
              columnSpacing: 15,
              border: TableBorder.all(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                  borderRadius: BorderRadius.circular(15)),
              headingRowColor: MaterialStateProperty.all(Colors.blue),
              headingTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              columns: const [
                DataColumn(label: Text('Cusp', textAlign: TextAlign.center)),
                DataColumn(
                  label: Text('Degree', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sign', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sign Lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Star lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Star lord', textAlign: TextAlign.center),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Capricorn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Su',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('6')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('12',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Taurus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('9')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('8',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Capricorn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Su',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ju',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Scorpio',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ma',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5',
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Libra',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ra',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Aquarius',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ma',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Mo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
