import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.white,
        label:  Text(text),
        hintStyle: const TextStyle(
            color: Colors.black

        ),
      ),

    );
  }
}
