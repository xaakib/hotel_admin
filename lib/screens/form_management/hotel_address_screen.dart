import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/components/TextFieldContainerDEcoration.dart';
import 'package:hotel_admin/components/register_form_bar.dart';
import 'package:hotel_admin/screens/form_management/hotel_information_screen.dart';

class HotelAddresscreen extends StatefulWidget {
  const HotelAddresscreen({Key? key}) : super(key: key);

  @override
  _HotelAddresscreenState createState() => _HotelAddresscreenState();
}

class _HotelAddresscreenState extends State<HotelAddresscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController telephone = TextEditingController();
  final TextEditingController faxNumber = TextEditingController();
  final TextEditingController roadHousNumber = TextEditingController();
  final TextEditingController zipCode = TextEditingController();
  final TextEditingController writCompanyAddress = TextEditingController();
  final TextEditingController comments = TextEditingController();
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
                    title: "Hotel-Address",
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
                          hintText: "Telephone Number"),
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
                          border: InputBorder.none, hintText: "Fax Number"),
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
                          hintText: "Road/House Number"),
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
                          border: InputBorder.none, hintText: "Zip Code"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ]),
                    child: TextFormField(
                      maxLines: 4,
                      textAlign: TextAlign.start,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Write Copany Address"),
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
                    "Select Division",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("previous"),
                        ),
                      ),
                      Container(
                        height: 35,
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(HotelInformationScreen(),
                              transition: Transition.rightToLeftWithFade);
                          },
                          child: Text("Next"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String dropdownvalue = 'Select Division';
  var items = [
    'Select Division',
    'Chattagram',
    'Rajshahi',
    'Khulna',
    'Barisal',
    'Sylhet'
  ];
}
