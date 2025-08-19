import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/note_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesStates>(
        builder: (context, state) {
          final List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) => NoteItem(note:  notes[index],),
          );
        },
      ),
    );
  }
}
