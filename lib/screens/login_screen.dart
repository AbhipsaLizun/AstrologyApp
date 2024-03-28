import 'package:astrology_app/screens/otp_verify.dart';
import 'package:astrology_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/background_img.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              //margin: const EdgeInsets.only(top: 100),
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
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Hi, Welcome",
                          style: GoogleFonts.alike(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Submit your mobile number",
                            style: GoogleFonts.actor(color: Colors.grey[700]),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Row(children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        )),
                        Text(
                          "Log in or sign up",
                          style: GoogleFonts.actor(color: Colors.grey[600]),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        )),
                      ]),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 18),
                      //padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      //height: 40,
                      child: IntlPhoneField(
                        decoration: const InputDecoration(
                          counter: Offstage(),
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        showDropdownIcon: true,
                        dropdownIconPosition: IconPosition.trailing,
                        flagsButtonPadding: const EdgeInsets.all(8),
                        onChanged: (phone) {
                          //print(phone.completeNumber);
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                      child: PrimaryButton(
                          text: Center(
                        child: Text(
                          "Request OTP",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Row(children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        )),
                        Text(
                          "Or",
                          style: GoogleFonts.actor(color: Colors.grey[600]),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        )),
                      ]),
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    SecondaryButton(
                        text: Center(
                            child: Text(
                      "Continue with email",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ))),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "By continuing, you agree to our Terms and Privacy policy",
                          style: GoogleFonts.actor(
                              color: Colors.grey[700], fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
