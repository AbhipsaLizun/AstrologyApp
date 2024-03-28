import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';

// *****  USER PROFILE *****//

class Profile extends StatefulWidget {
  const Profile({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            widget.icon,
            color: Colors.white.withOpacity(0.5),
            size: 20,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            widget.text,
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//******* USER SETTING ******//

class SPage extends StatefulWidget {
  const SPage({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          widget.icon,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          widget.text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}

// ***** USER HADE LINE SCREEN  *****//

class HadLineP extends StatefulWidget {
  const HadLineP({super.key, required this.text});

  final String text;

  @override
  State<HadLineP> createState() => _HadLinePState();
}

class _HadLinePState extends State<HadLineP> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}

// ********    USER EDIT BUTTON  *******//

class UserAllButtonPage extends StatelessWidget {
  const UserAllButtonPage(
      {Key? key, required this.btnText, required this.pressed})
      : super(key: key);

  final String btnText;
  final void Function() pressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50,
      width: 130,
      child: ElevatedButton(
        onPressed: pressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

//*******  USER SETTING RADIO BUTTON  *******//

class RadioB extends StatefulWidget {
  const RadioB({
    super.key,
  });

  @override
  State<RadioB> createState() => _RadioBState();
}

class _RadioBState extends State<RadioB> {
  var _indexVartical = 0;
  final _listVertical = ["Hindi", "Oriya", "Bengoli"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 185,
          width: MediaQuery.of(context).size.width * 0.88,
          // margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            FlutterRadioGroup(
              titles: _listVertical,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 17),
              activeColor: Colors.green,
              orientation: RGOrientation.VERTICAL,
              defaultSelected: _indexVartical,
              onChanged: (index) {
                setState(() {
                  _indexVartical = index!;
                });
              },
            ),
          ]),
        ),
      ],
    );
  }
}

///*********   -----------------------------     ********///

class RButton extends StatefulWidget {
  const RButton({
    super.key,
    required this.image,
    required this.text,
  });
  final ImageProvider<Object> image;
  final String text;
  @override
  State<RButton> createState() => _RButtonState();
}

class _RButtonState extends State<RButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(1)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RadioMenuButton(
            value: 1,
            groupValue: 4,
            onChanged: (index) {
              setState(() {});
            },
            child: Row(
              children: [
                Image.asset(
                  widget.image as String,
                  height: 45,
                  width: 45,
                ),
                Text(
                  widget.text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ))
      ]),
    );
  }
}

//*****  ADD WALLET  *****//

class SelectB extends StatefulWidget {
  const SelectB({super.key});

  @override
  State<SelectB> createState() => _SelectBState();
}

class _SelectBState extends State<SelectB> {
  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
      elevation: 0,
      absoluteZeroSpacing: false,
      spacing: 5,
      unSelectedColor: Colors.white.withOpacity(0.1),
      selectedBorderColor: Colors.white,
      unSelectedBorderColor: Colors.white,
      height: 55,
      width: 120,
      shapeRadius: 10,
      enableShape: true,
      radius: 10,
      buttonLables: const [
        'Cancel',
        'Confirm',
      ],
      buttonValues: const [
        "Cancel",
        "Confirm",
      ],
      buttonTextStyle: const ButtonTextStyle(
          selectedColor: Colors.white,
          unSelectedColor: Colors.white,
          textStyle: TextStyle(fontSize: 16)),
      radioButtonValue: (value) {
        //print(value);
      },
      selectedColor: Theme.of(context).colorScheme.secondary,
    );
  }
}

///*******************  ----------------------------------- ****************///

class FollowingP extends StatefulWidget {
  const FollowingP({super.key});

  @override
  State<FollowingP> createState() => _FollowingPState();
}

class _FollowingPState extends State<FollowingP> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 63,
          width: 63,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/boy-dp.jpg')),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),

          // child: Image.asset(
          //   'assets/images/boy-dp.jpg',
          //   height: 20,
          //   width: 20,
          // ),
        ),
      ],
    );
  }
}

//*****  USER KUNDLI  *****//

class KPage extends StatefulWidget {
  const KPage({super.key, required this.text});
  final String text;

  @override
  State<KPage> createState() => _KPageState();
}

class _KPageState extends State<KPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

//******  USER KUNDLI ******//

class CKPage extends StatelessWidget {
  const CKPage({super.key, required this.text, required this.text1});
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.31,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              text1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//******  USER KUNDLI ******//

class DPage extends StatelessWidget {
  const DPage(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2});
  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.59,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  text1,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//****** USER KUNDLI******//

class DashaPage extends StatelessWidget {
  const DashaPage(
      {super.key,
      required this.text,
      required this.text1,
      required this.text2});
  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.69,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  text1,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//******  USER KUNDLI ******//

class CTKundli extends StatelessWidget {
  const CTKundli({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 29,
          width: MediaQuery.of(context).size.width * 0.21,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 233, 161),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 17, right: 10),
            child: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 11),
              // textAlign: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}

//****** USER KUNDLI *****//

class PlanetaryPage extends StatelessWidget {
  const PlanetaryPage({super.key, required this.text, required this.text1});
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.47,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text1,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
