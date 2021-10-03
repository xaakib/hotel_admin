import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/components/TextFieldContainerDEcoration.dart';
import 'package:hotel_admin/components/register_form_bar.dart';
import 'package:hotel_admin/screens/form_management/Terms&Condition_screen.dart';

class AditionalInformationScreen extends StatefulWidget {
  const AditionalInformationScreen({Key? key}) : super(key: key);

  @override
  _AditionalInformationScreenState createState() =>
      _AditionalInformationScreenState();
}

class _AditionalInformationScreenState
    extends State<AditionalInformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController bussinessController = TextEditingController();

  final TextEditingController tinNumberController = TextEditingController();

  final TextEditingController webUrl = TextEditingController();

  final TextEditingController about = TextEditingController();
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
                  RegisterFormbar(title: "Aditional-Information"),
                  SizedBox(height: 40),
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
                          hintText: "Business/Trade license No"),
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
                          border: InputBorder.none, hintText: "TIN Number"),
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
                          border: InputBorder.none, hintText: "Website URL"),
                    ),
                  ),
                  SizedBox(height: 10),
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
                          border: InputBorder.none,
                          hintText: "About your business"),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            Get.to(TermsAndConditionScreen(),
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
}
