import 'package:flutter/material.dart';
import 'package:notes_app2/custom_widget/custom_search_icon.dart';


class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      const  Text("Notes",style: TextStyle(fontSize: 29),),Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
