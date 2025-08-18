import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/custom_app_bar.dart';
import 'package:notes_app/screens/widgets/custom_text_field.dart';

class EditNoteScreenBody extends StatelessWidget {
  const EditNoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(title: "Edit Note", icon: Icons.check,),
              CustomTextField(label: 'Title'),
              SizedBox(height: 16,),
              CustomTextField(label: 'Content' , maxLines: 5,),
            ],
          ),
        ),
      ),
    );
  }
}