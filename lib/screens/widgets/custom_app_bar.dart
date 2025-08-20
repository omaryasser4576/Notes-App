import 'package:flutter/material.dart';
import 'package:notes_app/screens/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.showBackArrow = false,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final bool showBackArrow;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          showBackArrow
              ? CustomIconButton(
                  icon: Icons.arrow_back,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : const SizedBox(),
          showBackArrow ? const SizedBox(width: 12) : const SizedBox(),
          Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          CustomIconButton(icon: icon, onPressed: onPressed),
        ],
      ),
    );
  }
}
