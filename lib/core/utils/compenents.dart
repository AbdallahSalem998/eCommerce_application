import 'package:flutter/material.dart';

Widget defaultFormField(
        {required String label,
        required Function validate,
        TextEditingController? coontroller,
        bool isPassword = false}) =>
    TextFormField(
      controller: coontroller,
      validator: (value) {
        validate(value);
      },
      obscureText: isPassword,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: label,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12))),
    );
