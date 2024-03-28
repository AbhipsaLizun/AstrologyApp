import 'package:flutter/material.dart';

import '../profile/user_all_calss.dart';

class AstakvargaTabPage extends StatefulWidget {
  const AstakvargaTabPage({super.key});

  @override
  State<AstakvargaTabPage> createState() => _AstakvargaTabPageState();
}

class _AstakvargaTabPageState extends State<AstakvargaTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            const KPage(text: 'Ashtakvarga Chart'),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Ut laboriosam ipsa tenetur totam id nam similique\npraesentium. Sequi eos cum in officia ut repellendus\nunde repudiandae. A id alias quis consequatur\ncommodi maxime magni voluptatem doloribus.\nDebitis debitis et voluptatem occaecati. Fugit cum eius\nqui ut et quia est quaerat. Reiciendis optio quibusdam\nquia vel quis est reprehenderit. Non sit et hic omnis\nomnis dolores accusamus esse. Accusamus est\nperferendis asperiores tempore asperiores totam. Est\nalias sed atque debitis enim pariatur magnam officiis\ndelectus. Nulla facere architecto",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/ashtakvarga.png',
              width: MediaQuery.of(context).size.width * 170,
            ),
          ],
        ),
      ),
    );
  }
}
