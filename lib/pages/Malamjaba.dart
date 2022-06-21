// ignore_for_file: dead_code, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/build_sliding_panel.dart';
import 'package:google_fonts/google_fonts.dart';

class MalamJaba extends StatefulWidget {
  const MalamJaba({Key? key}) : super(key: key);

  @override
  State<MalamJaba> createState() => _MalamJabaState();
}

class _MalamJabaState extends State<MalamJaba> {
  final panelController = PanelController();
  final double tabBarHeight = 80;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        padding: EdgeInsets.all(12),
        minHeight: 130,
        controller: panelController,
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20) ),
        panelBuilder: (ScrollController) => buildSlidingPanel(
          area: 'MalamJaba',
          scrollController: ScrollController,
          //panelController: panelController
        ),
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/malamjaba.jpeg'),
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