import 'dart:developer';

import 'package:astrology_app/screens/Home_page.dart';
import 'package:astrology_app/utils/properties.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/keys.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  String? formattedTime;
  String? formattedDate;
  DateTime? selectedDate;
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final placeController = TextEditingController();
  static const kGoogleApiKey = Constants.googleApiKey;
  GoogleMapsPlaces places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

  Future _selectDate() async {
    selectedDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate!,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2050));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        formattedDate =
            " ${selectedDate!.day} - ${selectedDate!.month} - ${selectedDate!.year} ";
        dateController.text = formattedDate.toString();
        log("message ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}");
      });
    }
  }

  Future time() async {
    TimeOfDay selectedTime = TimeOfDay.now();
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: selectedTime,
      context: context,
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!);
        // Theme(
        //   data: Theme.of(context).copyWith(
        //     colorScheme: const ColorScheme.light(
        //       primary: Colors.blue, // header background color
        //       onPrimary: Colors.black, // header text color
        //       onSurface: Colors.black, // body text color
        //     ),
        //     textButtonTheme: TextButtonThemeData(
        //       style: TextButton.styleFrom(
        //         primary: Colors.blueAccent, // button text color
        //       ),
        //     ),
        //   ),
        //   child: child!,
        // );
      },
    );
    // ignore: use_build_context_synchronously
    MaterialLocalizations localizations = MaterialLocalizations.of(context);

    if (pickedTime != null) {
      formattedTime = localizations.formatTimeOfDay(pickedTime,
          alwaysUse24HourFormat: false);
      //print("TIME.." + formattedTime.toString()); //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        timeController.text = formattedTime.toString();
      });
    } else {
      //print("Time is not selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    //visibility of floating btn while opening of keyboard
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: Container(
          height: 45,
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: FloatingActionButton.extended(
            backgroundColor: Colors.blue[600],
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            label: const Text("Submit"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 12),
                child: Text(
                  "Tell us about you",
                  style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: textColor()),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Name",
                  style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: textColor()),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(40),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.red),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Birth Details",
                  style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2, bottom: 8),
                            child: Text(
                              "Date",
                              style: TextStyle(color: textColor()),
                            ),
                          ),
                          //..........Date.............//
                          GestureDetector(
                              onTap: () {
                                _selectDate();
                              },
                              child: SizedBox(
                                height: 45,
                                width: 180,
                                child: TextFormField(
                                  enabled: false,
                                  textAlign: TextAlign.center,
                                  controller: dateController,
                                  style: TextStyle(color: textColor()),
                                  decoration: InputDecoration(
                                    hintText: 'dd-mm-yyyy',
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 20.0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 0.5,
                                        )),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 0.5,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 0.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.blue,
                                        width: 0.5,
                                      ),
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "Time",
                              style: TextStyle(color: textColor()),
                            ),
                          ),
                          //..........Time.............//
                          GestureDetector(
                              onTap: () {
                                time();
                              },
                              child: SizedBox(
                                height: 45,
                                width: 165,
                                child: TextFormField(
                                  enabled: false,
                                  controller: timeController,
                                  //style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: '00:00',
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 12.0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 0.5,
                                        )),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 0.5,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 0.5,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      gapPadding: 0.0,
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Colors.blue,
                                        width: 0.5,
                                      ),
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 15, bottom: 10),
                child: Text(
                  "Place",
                  style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor()),
                ),
              ),
              GestureDetector(
                onTap: () {
                  fetchPlaces(context);
                },
                child: SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                      controller: placeController,
                      enabled: false,
                      style: TextStyle(color: textColor()),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        hintText: "Place of birth",
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                              style: BorderStyle.solid),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 15, bottom: 10),
                child: Text(
                  "Gender",
                  style: GoogleFonts.actor(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor()),
                ),
              ),
              CustomRadioButton(
                elevation: 0,
                absoluteZeroSpacing: false,
                spacing: 5,
                unSelectedColor: Colors.white.withOpacity(0.3),
                selectedBorderColor: Colors.blue,
                unSelectedBorderColor: Colors.grey,
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
                    textStyle: TextStyle(fontSize: 16)),
                radioButtonValue: (value) {
                  // print(value);
                },
                selectedColor: Theme.of(context).colorScheme.secondary,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Expanded(
              //         child: ElevatedButton(
              //             //style: ButtonStyle(backgroundColor: Colors.white),
              //             onPressed: () {},
              //             style: ElevatedButton.styleFrom(
              //               side: const BorderSide(
              //                   color: Color.fromARGB(255, 210, 205, 205)),
              //               backgroundColor: Colors.white, // Background color
              //             ),
              //             child: const Text(
              //               "Male",
              //               style: TextStyle(color: Colors.black),
              //             ))),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Expanded(
              //         child: ElevatedButton(
              //             onPressed: () {
              //               Navigator.pushReplacement(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => const HomePage()));
              //             },
              //             child: const Text("Female"))),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> fetchPlaces(BuildContext context) async {
    Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: kGoogleApiKey,
      onError: onError,
      mode: Mode.overlay,
      language: "en",
      types: [],
      strictbounds: false,
      decoration: InputDecoration(
        hintText: 'Search',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      components: [Component(Component.country, "in")],
    );

    log("Pvalue..$p");
    // ignore: use_build_context_synchronously
    displayPrediction(p!, context);
  }

  void onError(PlacesAutocompleteResponse response) {
    log("mSG.... ${response.errorMessage}");
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(response.errorMessage!)));
  }

  Future<void> displayPrediction(Prediction? p, BuildContext context) async {
    if (p != null) {
      // get detail (lat/lng)
      GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: kGoogleApiKey,
        //apiHeaders: await const GoogleApiHeaders().getHeaders(),
      );
      PlacesDetailsResponse detail =
          await places.getDetailsByPlaceId(p.placeId!);
      final lat = detail.result.geometry!.location.lat;
      final lng = detail.result.geometry!.location.lng;

      setState(() {
        placeController.text = p.description.toString();
        log("message$lat$lng");
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong"),
      ));
    }
  }
}
