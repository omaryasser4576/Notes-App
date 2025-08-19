import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/note_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchNotes() {
    notes = Hive.box<NoteModel>(kNotesBox).values.toList();
  }
}
