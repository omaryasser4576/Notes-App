import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/custom_app_bar.dart';
import 'package:notes_app/screens/widgets/notes_list_view.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            children: [
              CustomAppBar(title: "Notes", icon: Icons.search,),
              NotesListView(),
            ],
          ),
      ),
    );
  }
}