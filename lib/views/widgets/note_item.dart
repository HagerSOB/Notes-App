
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips",style: TextStyle(fontSize: 30,color: Colors.black),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text("Build Your Career With Tharwat Samy",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.5))),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text("18oct.2025",style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(.5))),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xffFFcE80), borderRadius: BorderRadius.circular(16)),
    );
  }
}
