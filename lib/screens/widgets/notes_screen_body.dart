import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/screens/widgets/custom_app_bar.dart';
import 'package:notes_app/screens/widgets/notes_list_view.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomAppBar(title: "Notes", icon: Icons.search),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
