import 'package:flutter/material.dart';

class TextfiledDecoration extends StatelessWidget {
  const TextfiledDecoration({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: emailController,
      validator: (value) {
        if (value!.isEmpty || value == null) {
          return "input you requerd";
        }
      },
      decoration:
          InputDecoration(labelText: "User Name", border: InputBorder.none),
    );
  }
}
