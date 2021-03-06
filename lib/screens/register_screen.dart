import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/components/TextFieldContainerDEcoration.dart';
import 'package:hotel_admin/components/register_form_bar.dart';
import 'package:hotel_admin/screens/form_management/hotel_address_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameCotnroller = TextEditingController();
  final TextEditingController passowrdCotnroller = TextEditingController();
  final TextEditingController confirmCotnroller = TextEditingController();
  final TextEditingController hotelNameCotnroller = TextEditingController();
  final TextEditingController hotelOwnerNameCotnroller =
      TextEditingController();
  final TextEditingController emailCotnroller = TextEditingController();
  final TextEditingController mobileNumberCotnroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withOpacity(0.1),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterFormbar(
                    title: "Account Information",
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "User Name"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Password"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Password"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Hotel Owner Name"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Email"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFieldContainerDEcoration(
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Mobile Number"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hotel Type",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalue = newValue.toString();
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 35,
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(HotelAddresscreen(),
                              transition: Transition.rightToLeftWithFade);
                      },
                      child: Text("Next"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String dropdownvalue = 'Hotel';
  var items = ['Hotel', 'Lodge', 'Resort', 'Banglo', 'Cottage', 'Guest House'];
}
