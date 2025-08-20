import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/widgets/color_item.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int selectedColor;

  @override
  void initState() {
    selectedColor = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            selectedColor = index;
            widget.note.color = kColors[index].toARGB32();
            setState(() {
              
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ColorItem(
              color: kColors[index],
              isActive: selectedColor == index,
            ),
          ),
        ),
      ),
    );
  }
}
