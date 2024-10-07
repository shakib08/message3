import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageLink;
  final Border border;

  const CustomContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageLink, required this.border});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 75,
      width: 168,
      decoration: BoxDecoration(
        border: border,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageLink,
                width: 25,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5C5C5C)),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff5C5C5C)),
          ),
        ],
      ),
    );
  }
}
