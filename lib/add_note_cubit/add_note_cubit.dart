import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app2/Models/Note_modle.dart';
import 'package:notes_app2/add_note_cubit/notes_state.dart';
import 'package:notes_app2/constants.dart';


class AddNoteCubit extends Cubit<NotesState> {
  AddNoteCubit() : super(Noteinitial());
 addNote(NoteModle note) async{
   emit(NoteLoading());
    try{
      var notesBox=Hive.box<NoteModle>(kNotesBox);
      emit(NoteSuccsses());

      await notesBox.add(note);


    }catch (e){
      emit(NoteFailure(e.toString()));
    }

 }

  }


