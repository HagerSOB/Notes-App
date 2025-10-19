import 'package:flutter/material.dart';
import 'package:notes_app2/views/widgets/Note_bottom_Sheet.dart';
import 'package:notes_app2/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    floatingActionButton:   FloatingActionButton(onPressed: (){
      showModalBottomSheet(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),context: context, builder: (context){
       return  const AddNoteBottomSheet();
      });
    },child: Icon(Icons.add),)
    ,body: NotesViewBody(),);
  }
}
