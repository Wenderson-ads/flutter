import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.tittle,
      required this.controller,
      this.isPassWord = false});

  final String tittle;
  final TextEditingController controller;
  final bool isPassWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle,
            style: GoogleFonts.aleo(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            obscureText: isPassWord,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              isDense: true,
            ),
          )
        ],
      ),
    );
  }
}
