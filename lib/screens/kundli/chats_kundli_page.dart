import 'package:flutter/material.dart';

import '../profile/user_all_calss.dart';

class ChatsKundliPage extends StatefulWidget {
  const ChatsKundliPage({super.key});

  @override
  State<ChatsKundliPage> createState() => _ChatsKundliPageState();
}

class _ChatsKundliPageState extends State<ChatsKundliPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            const KPage(text: 'Lagna '),
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
            const KPage(text: 'Planets'),
            const SizedBox(
              height: 10,
            ),
            DataTable(
              columnSpacing: 19,
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
                DataColumn(label: Text('Planet', textAlign: TextAlign.center)),
                DataColumn(
                  label: Text('Sign', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Sign Lord', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('Degree', textAlign: TextAlign.center),
                ),
                DataColumn(
                  label: Text('House', textAlign: TextAlign.center),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    'Ascendant',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
                  DataCell(Text('Taurus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('1',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Moon',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Capricorn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('9')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Mars',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Taurus',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('1',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Rahu',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Scorpio',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ma',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Jupiter', style: TextStyle(color: Colors.white))),
                  DataCell(Text('Libra',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Ve',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('9',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Saturn',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Aquarius',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('Sa',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('19  1’53',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataCell(Text('6',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10))),
                  //DataCell(Text('8')),
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const KPage(text: 'understanding Your Kundli'),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 29,
                  width: MediaQuery.of(context).size.width * 0.19,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 202, 243),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Text(
                      'General',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CTKundli(
                  text: 'Planetary',
                ),
                const SizedBox(
                  width: 15,
                ),
                const CTKundli(
                  text: 'Yoga',
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Description',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Personality',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Physical',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Health',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Career',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
            const SizedBox(
              height: 15,
            ),
            const CKPage(
              text: 'Relationship',
              text1:
                  'Ut laboriosam ipsa tenetur totam id nam similique \npraesentium. Sequi eos cum in officia ut \nrepellendus unde repudiandae. A id alias quis \nconsequatur commodi maxime magni \nvoluptatem doloribus. Debitis debitis et \nvoluptatem occaecati. Fugit cum eius qui ut et \nquia est quaerat. Reiciendis optio quibusdam quia \nvel quis est reprehenderit. Non sit et hic omnis \nomnis dolores accusamus esse. Accusamus est \nperferendis asperiores tempore asperiores totam. \nEst alias sed atque debitis enim pariatur magnam \nofficiis delectus. Nulla facere architecto.',
            ),
          ],
        ),
      ),
    );
  }
}
