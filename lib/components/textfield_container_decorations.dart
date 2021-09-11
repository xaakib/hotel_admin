import 'package:flutter/material.dart';

import 'textfield_input_decorations.dart';

class TextFeildContainerDecoration extends StatelessWidget {
  const TextFeildContainerDecoration({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
      child: TextfiledDecoration(emailController: emailController),
    );
  }
}
