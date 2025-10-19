
import 'package:flutter/material.dart';
import 'package:notes_app2/constants.dart';
import 'package:notes_app2/custom_widget/custom_bottom.dart';
import 'package:notes_app2/custom_widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 33,)
          ,CustomTextField(hint: 'title',)
         ,SizedBox(height: 24,)
          ,CustomTextField(
          maxLine: 7
          ,hint: 'content',),

        Padding(
          padding: const EdgeInsets.only(top:90,bottom:50 ),
          child: CustomBottom(),
        )
        
        ],),
      ),
    );
  }
}

