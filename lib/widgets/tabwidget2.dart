import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabwidget extends StatelessWidget {
  final String area;
  const Tabwidget({Key? key, required this.area}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        const Center(
          child: Icon(Icons.arrow_upward_sharp,size: 30,),
        ),

        const SizedBox(height: 6,),

        Center(
          child: Text(
            area,
            style: GoogleFonts.montserrat(
              textStyle : const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700
              )
            )
          ),
        ),
        const SizedBox(height: 60,),
        Text(
          "Package Include: ",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            )
          )
        ),
        const SizedBox(height: 6,),
        Text(
          """
  - Travel
  - Hostel & Meals
  - Photography
  - Tour Guide
  - First Aid

""",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 17
            )
          ),
        ),

        Text(
          "Prices: ",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            )
          )
        ),
        const SizedBox(height: 6,),

        Text(
          "Islamabad: Rs 00,000 ",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 19,
              //fontWeight: FontWeight.w600
            )
          )
        ),
        const SizedBox(height: 6,),
        Text(
          "Lahore: Rs 00,000",
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 19,
              //fontWeight: FontWeight.w600
            )
          )
        ),


      ],
        ),
      ),
    );
  }
}