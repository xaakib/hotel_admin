import 'package:flutter/material.dart';

class TextFieldContainerDEcoration extends StatelessWidget {
  final Widget child;
  const TextFieldContainerDEcoration({Key? key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.06,
      padding: EdgeInsets.symmetric(horizontal: 10,),
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
      child: child,
    );
  }
}

  //  TextFieldContainerDEcoration(
  //                       child: TextFormField(
  //                         textAlign: TextAlign.start,
  //                         controller: usernameCotnroller,
  //                         validator: (value) {
  //                           if (value!.isEmpty || value == null) {
  //                             return "input you requerd";
  //                           }
  //                         },
  //                         decoration: InputDecoration(
  //                             hintText: "Mobile", border: InputBorder.none),
  //                       ),
  //                     ),
  //                     SizedBox(height: 10),