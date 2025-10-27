import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app2/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app2/add_note_cubit/notes_state.dart';
import 'package:notes_app2/custom_widget/custom_bottom.dart';
import 'package:notes_app2/custom_widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
   const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, NotesState>(
        builder: (context, state) {
          return ModalProgressHUD(inAsyncCall:state is NoteLoading?true:false ,child: AddNoteForm());
        },
        listener: (context, state) {
          if(state is NoteFailure){
            print("Note Failed ${state.errMessage}");
          }
          if (state is NoteSuccsses)
          {
            Navigator.pop(context);
          }
        },
      )),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxLine: 7,
            hint: 'content',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 50),
            child: CustomBottom(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
