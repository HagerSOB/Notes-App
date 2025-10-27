import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app2/Models/Note_modle.dart';
import 'package:notes_app2/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app2/constants.dart';
import 'package:notes_app2/simple_bloc_observer.dart';
import 'package:notes_app2/views/notes_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModleAdapter());
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=> AddNoteCubit())
      ],
      child: MaterialApp( debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,),
        home:  const NotesView(),
      ),
    );
  }
}
