import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(right: 20, bottom: 5, left: 5, top: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(30)),
      child: const TextField(
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        // obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail_outline),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: "Email"),
      ),
    );
  }
}
