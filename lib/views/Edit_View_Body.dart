import 'package:flutter/material.dart';
import 'package:notes_app2/custom_widget/custom_app_bar.dart';
import 'package:notes_app2/custom_widget/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(

          children: [
            SizedBox(height: 70,),
            CustomAppBarr(title: 'Edit Note', icon: Icons.check,),
            SizedBox(height:40,),

            CustomTextField(hint: 'title',),
            SizedBox(height:20,),

            CustomTextField(
              maxLine: 7
              ,hint: 'content',),


          ]
      ),
    );
  }
}
