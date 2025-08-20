import 'package:cherry_toast_msgs/cherry_toast_msgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/widgets/custom_app_bar.dart';
import 'package:notes_app/screens/widgets/custom_text_field.dart';
import 'package:notes_app/screens/widgets/edit_colors_list_view.dart';

class EditNoteScreenBody extends StatefulWidget {
  const EditNoteScreenBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteScreenBody> createState() => _EditNoteScreenBodyState();
}

class _EditNoteScreenBodyState extends State<EditNoteScreenBody> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  String? title, content;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.subTitle);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: "Edit Note",
                icon: Icons.check,
                showBackArrow: true,
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = content ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  CherryToastMsgs.showSuccessToast(
                    height: 120,
                    context: context,
                    title: 'Success!',
                    description: 'Note has been edited sccessfully.',
                  );
                },
              ),

              const SizedBox(height: 16),
              CustomTextFormField(
                controller: titleController,
                label: 'Title',
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                controller: contentController,
                label: 'Content',
                maxLines: 5,
                onChanged: (value) {
                  content = value;
                },
              ),

              const SizedBox(height: 32),
              EditColorsListView(note: widget.note),
            ],
          ),
        ),
      ),
    );
  }
}
