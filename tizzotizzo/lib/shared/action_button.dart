import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key, required this.title, required this.buttonAction});

  final String title;
  final Function() buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => buttonAction(),
        child: Text(title),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Color(0xff000000),
        ),
      ),
    );
  }
}
