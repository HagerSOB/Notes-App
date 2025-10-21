import 'package:flutter/material.dart';
import 'package:notes_app2/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine=1});
final String hint;
final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor:kPrimaryColor,
maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
          border: bulidBorder(),
              focusedBorder: bulidBorder( kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder([color]) {
    return OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color:  color??Colors.white
      )
);
  }
}
