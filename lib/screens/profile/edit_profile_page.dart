import 'package:astrology_app/screens/profile/user_all_calss.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime = TimeOfDay.now();

  final TextEditingController _birthdate = TextEditingController();
  final TextEditingController _birthtime = TextEditingController();

  // static const kGoogleApiKey = Location.googleApiKey;
  // GoogleMapsPlaces places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(
            bottom: 25,
          ),
          // alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(children: [
              const HadLineP(
                text: 'Edit profile',
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/astrologers/astro5.jpg')),
                          border: Border.all(
                              color: Colors.white.withOpacity(0.3), width: 5),
                          borderRadius: BorderRadius.circular(150)),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 79,
                    child: InkWell(
                      child: Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Birth Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Date',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: InkWell(
                                onTap: () {
                                  _selectDate(context);
                                },
                                child: TextField(
                                  controller: _birthdate,
                                  enabled: false,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.2),
                                    disabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 0.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.33,
                              child: InkWell(
                                onTap: () {
                                  _selectTime(context);
                                },
                                child: TextField(
                                  controller: _birthtime,
                                  enabled: false,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.2),
                                    disabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 0.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Place',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                    style: BorderStyle.solid),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomRadioButton(
                          elevation: 0,
                          absoluteZeroSpacing: false,
                          spacing: 5,
                          unSelectedColor: Colors.grey.withOpacity(0.3),
                          selectedBorderColor: Colors.blue,
                          unSelectedBorderColor: Colors.white,
                          height: 55,
                          width: 120,
                          shapeRadius: 10,
                          enableShape: true,
                          radius: 10,
                          buttonLables: const [
                            'Male',
                            'Female',
                          ],
                          buttonValues: const [
                            "Male",
                            "Female",
                          ],
                          buttonTextStyle: const ButtonTextStyle(
                              selectedColor: Colors.white,
                              unSelectedColor: Colors.white,
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          radioButtonValue: (value) {
                            //print(value);
                          },
                          selectedColor:
                              Theme.of(context).colorScheme.secondary,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const SettingPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 10, 123, 216),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    String formatDate;
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(3000));
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        formatDate =
            "${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year}";
        _birthdate.text = formatDate.toString();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    String formatTime;
    TimeOfDay? selectedTime = TimeOfDay.now();
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (newTime != null && newTime != selectedTime) {
      setState(() {
        selectedTime = newTime;
        formatTime = "${selectedTime!.hour} : ${selectedTime!.minute}";
        _birthtime.text = formatTime.toString();
      });
    }
  }
}
