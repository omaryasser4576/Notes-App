import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesScreenBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){},
        child: const Icon(
          Icons.add, 
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}