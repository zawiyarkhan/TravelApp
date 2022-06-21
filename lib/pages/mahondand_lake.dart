// ignore_for_file: dead_code, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/build_sliding_panel.dart';
import 'package:google_fonts/google_fonts.dart';

class Mahodand extends StatefulWidget {
  const Mahodand({Key? key}) : super(key: key);

  @override
  State<Mahodand> createState() => _MahodandState();
}

class _MahodandState extends State<Mahodand> {
  final panelController = PanelController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        padding: EdgeInsets.all(12),
        minHeight: 130,
        color: Colors.white.withOpacity(0.7),
        //controller: panelController,
        // isDraggable: false,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20) ),
        panelBuilder: (scrollController) => buildSlidingPanel(
          area: 'Mahodand Lake',
          scrollController: scrollController,
          //panelController: panelController
        ),
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/Mahodand.jpg'),
                fit: BoxFit.fitHeight
            )
          ),
          child: Column(
            children: [
              const SizedBox(height: 6,),
              Center(
                child: Text(
                      "Company.",
                      style: GoogleFonts.anton(
                        textStyle: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 54,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ),
              ),
            ],
          ),
        ),
      )
    );

  


      
  }
}