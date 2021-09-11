import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_admin/components/textfield_container_decorations.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passowrdController = TextEditingController();
  final TextEditingController confrimPassController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameControler = TextEditingController();

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
                    SizedBox(height: 20),
                    TextFeildContainerDecoration(
                        emailController: usernameController),
                    SizedBox(height: 10),
                    TextFeildContainerDecoration(
                        emailController: passowrdController),
                    SizedBox(height: 10),
                    TextFeildContainerDecoration(
                        emailController: nameControler),
                    SizedBox(height: 10),
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
    );
  }
}
