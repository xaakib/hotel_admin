import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFormbar extends StatelessWidget {
  final String title;

  const RegisterFormbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          alignment: Alignment.center,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(3)),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
