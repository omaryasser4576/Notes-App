import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/screens/widgets/add_note_modal_sheet.dart';
import 'package:notes_app/screens/widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesScreenBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.black, size: 28),
      ),
    );
  }
}
