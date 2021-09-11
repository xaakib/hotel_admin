import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_admin/components/TextFieldContainerDEcoration.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameCotnroller = TextEditingController();

  final TextEditingController passowrdController = TextEditingController();
  final TextEditingController confrimPassController = TextEditingController();
  final TextEditingController hotelnameCotnroller = TextEditingController();
  final TextEditingController hotelOwnerNameCotnroller =
      TextEditingController();
  final TextEditingController emailCotnroller = TextEditingController();
  final TextEditingController mobileNumberCotnroller = TextEditingController();
  final TextEditingController telephoneNumberCotnroller =
      TextEditingController();
  final TextEditingController faxnumberCotnroller = TextEditingController();
  final TextEditingController roadHouseNumberCotnroller =
      TextEditingController();
  final TextEditingController zipCodeCotnroller = TextEditingController();
  final TextEditingController writeCopanyAddressCotnroller =
      TextEditingController();
  final TextEditingController aboutCotnroller = TextEditingController();
  final TextEditingController nameControler = TextEditingController();
  final TextEditingController floorCotnroller = TextEditingController();
  final TextEditingController buinessORTradeLicenceController =
      TextEditingController();
  final TextEditingController tINNumberCotnroller = TextEditingController();
  final TextEditingController websiteUrlCotnroller = TextEditingController();
  final TextEditingController aboutYourBuissinessController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.1),
        elevation: 0,
        title: Text(
          "Register Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.1),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome TO",
                      style: GoogleFonts.pacifico(
                          color: Color(0xff0c328a),
                          letterSpacing: 1,
                          wordSpacing: 1,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    Text(
                      "Hotel Admin",
                      style: GoogleFonts.k2d(
                          color: Color(0xff0c328a),
                          letterSpacing: 1,
                          wordSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("DOne");
                          } else {
                            print("Not Done");
                          }
                        },
                        child: Text("Set"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
