import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/colors.dart';

// This file contains the menu tile widget
// This widget is used to create a menu tile
// MenuTile is used to display the menu items in the side menu bar.
// This widget is used in home_page.dart

class MenuTile extends StatelessWidget {
  final bool isSelected;
  final String menuName;
  final String iconPath;
  final void Function() function;
  const MenuTile(
      {super.key,
      required this.isSelected,
      required this.menuName,
      required this.iconPath,
      required this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 86, top: 0, right: 86),
      width: 180,
      height: 46,
      decoration: BoxDecoration(
          color: isSelected
              ? AppColors.colors.buttonBackground
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: ListTile(
          minLeadingWidth: 0,
          minVerticalPadding: 0,
          onTap: function,
          leading: Image(
            image: AssetImage(iconPath),
            width: 17,
            height: 17,
          ),
          title: Center(
            child: Text(
              menuName,
              style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
