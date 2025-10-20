import 'package:flutter/material.dart';
import 'package:notes_app2/custom_widget/custom_search_icon.dart';


class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(fontSize: 29),),Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
