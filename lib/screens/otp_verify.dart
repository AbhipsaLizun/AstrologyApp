import 'package:astrology_app/screens/about_us_screen.dart';
import 'package:astrology_app/widgets/background_img.dart';
import 'package:astrology_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //height: 100,
                alignment: Alignment.center,
                //margin: const EdgeInsets.only(top: 80),
                child: Text(
                  "JyotishBani",
                  style:
                      GoogleFonts.aclonica(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                //border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-4, -4),
                    blurRadius: 4,
                  )
                ],
              ),
              width: 500,
              height: MediaQuery.of(context).size.height * 0.52,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          // GestureDetector(
                          //   onTap: () {},
                          //   child: const Icon(
                          //     Icons.keyboard_arrow_left,
                          //     size: 29,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 4,
                          // ),
                          Text(
                            "OTP Verification",
                            style: GoogleFonts.alike(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "We have sent a verification code to",
                      style: GoogleFonts.actor(
                          color: Colors.grey[700], fontSize: 15),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "+91562435677",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.grey[700], fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 12),
                      child: Pinput(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: defaultPinTheme.copyDecorationWith(
                          border: Border.all(
                              color: const Color.fromARGB(255, 1, 20, 39)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                              color: const Color.fromARGB(255, 236, 243, 234),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 69, 203, 76))),
                        ),
                        validator: (s) {
                          return s == '2222' ? null : 'OTP is incorrect';
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) => print(pin),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutUsPage()));
                      },
                      child: PrimaryButton(
                          text: Center(
                              child: Text(
                        "Continue",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RichText(
                        text: TextSpan(
                          text: "If you didn't receive the code! ",
                          style: GoogleFonts.actor(
                              color: Colors.grey[700], fontSize: 15),
                          children: const [
                            TextSpan(
                                text: ' Resend',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueAccent)),
                          ],
                        ),
                      ),
                    ),
                    SecondaryButton(
                        text: Center(
                            child: Text(
                      "Change mobile number",
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 46,
    height: 46,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(2, 15, 27, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 9, 68, 117)),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
