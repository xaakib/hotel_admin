import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hotel_admin/screens/register_screen.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

  @override
  _TermsAndConditionScreenState createState() =>
      _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Terms & Condition",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 8,
                  child: Container(
                      height: 300,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Text(termText)),
                ),
                CheckboxListTile(
                  title: const Text('I agree to the Amarlodge Terms'),
                  value: timeDilation != 1.0,
                  onChanged: (bool? value) {
                    setState(() {
                      timeDilation = value! ? 02.0 : 01.0;
                    });
                  },
                  secondary: const Icon(Icons.hourglass_empty),
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
                          Get.offAll(RegisterScreen(),
                              transition: Transition.rightToLeftWithFade);
                        },
                        child: Text("Done"),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  String termText =
      ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore cum esse odit, ratione perferendis cumque atque ducimus nesciunt nobis laborum repellendus earum dignissimos at soluta molestiae voluptatum nihil illo cupiditate? Iusto, sint quidem. Nihil dicta officiis reiciendis harum ipsum accusamus sunt consequuntur inventore quisquam in, ipsam, facere, sed possimus voluptatum tenetur eum reprehenderit doloribus asperiores quos! Reiciendis dolore minus atque corporis tempora quos, unde dicta fugiat rem sint officiis, necessitatibus eaque? Minima, corrupti voluptates ex beatae, repellendus culpa exercitationem quis in maxime, atque excepturi temporibus dolores quasi? Tempora reprehenderit adipisci expedita neque! Voluptatum modi rem nihil animi repudiandae temporibus nisi? ';
}
