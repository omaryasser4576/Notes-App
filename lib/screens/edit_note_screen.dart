import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/edit_note_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteScreenBody(),
    );
  }
}