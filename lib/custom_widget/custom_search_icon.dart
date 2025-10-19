
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
        color: Colors.grey.withOpacity(.04)
    ),
      child: Center(child: Icon(Icons.search,size: 30,),),);
  }
}
