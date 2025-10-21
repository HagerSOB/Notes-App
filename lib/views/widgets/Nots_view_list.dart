
import 'package:flutter/material.dart';
import 'package:notes_app2/views/Edit_View_Body.dart';
import 'package:notes_app2/views/widgets/Edit_Note_View.dart';
import 'package:notes_app2/views/widgets/note_item.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero
          ,itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: GestureDetector(
              child: NoteItem(),
          onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return EditNoteView();
                }));
          },
          ),
        );
      }),
    );
  }
}
