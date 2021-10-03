import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/components/TextFieldContainerDEcoration.dart';
import 'package:hotel_admin/components/register_form_bar.dart';
import 'package:hotel_admin/screens/form_management/Aditional-Information_screen.dart';

class HotelInformationScreen extends StatefulWidget {
  const HotelInformationScreen({Key? key}) : super(key: key);

  @override
  _HotelInformationScreenState createState() => _HotelInformationScreenState();
}

class _HotelInformationScreenState extends State<HotelInformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController foorController = TextEditingController();
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
                    title: "Hotel-Information",
                  ),
                  SizedBox(height: 40),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
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
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "FLoor"),
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
                            Get.to(AditionalInformationScreen(),
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

  String dropdownvalue = '5 Star';
  var items = [
    '5 Star',
    '4 Star',
    '3 Star',
    '2 Star',
    '1 Star',
  ];
}
