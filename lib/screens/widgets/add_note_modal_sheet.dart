import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/custom_button.dart';
import 'package:notes_app/screens/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0 , horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(label: 'Title'),
            SizedBox(height: 16,),
            CustomTextField(label: 'Content', maxLines: 5,),
            SizedBox(height: 44,),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}