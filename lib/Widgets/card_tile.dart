import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onPressed,
    this.marginBottom = 0,
    super.key,
  });
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final void Function() onPressed;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF79E0EE),
      elevation: 5,
      margin: EdgeInsets.only(right: 20, left: 20, bottom: marginBottom),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        minLeadingWidth: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(leadingIcon, color: Colors.black),
        ),
        title: Text(
          title,
          style: GoogleFonts.cairo(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(subTitle),
        trailing: IconButton(
            onPressed: onPressed,
            icon: Icon(
              trailingIcon,
              color: Colors.black,
            )),
      ),
    );
  }
}
