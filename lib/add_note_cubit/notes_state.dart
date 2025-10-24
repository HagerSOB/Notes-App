import 'package:flutter/material.dart';

@immutable
  abstract class NotesState  {}
class Noteinitial extends NotesState {}
class NoteLoading extends NotesState {}
class NoteSuccsses extends NotesState {}
class NoteFailure extends NotesState {
 final String errMessage;

  NoteFailure(this.errMessage);

}

