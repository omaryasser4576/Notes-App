import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedColor = 0;
  List<Color> colors =  const[
    Color(0xffFFBF81),
    Color(0xffFFDC5E),
    Color(0xffE6F14A),
    Color(0xffC3D350),
    Color(0xff84A07C),
    Color(0xff16DB65),
    Color(0xff00A6FB),
    Color(0xff0582CA),
    Color(0xffFFA3A5),
    Color(0xffFF86C8),
    Color(0xffFF86C8),
    Color(0xffFF69EB),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: ColorItem(color: colors[index] ,isActive: selectedColor == index),
        ),
      ),
    );
  }
}
