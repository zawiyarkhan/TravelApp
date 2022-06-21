import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/splash_image2.jpeg'),
              fit: BoxFit.fill
          )
        ),

        child: Column(
         //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 170,),
            SizedBox(
              // height: height/2.9,
              child: Center(
                child: Text(
                  "Company.",
                  style: GoogleFonts.anton(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.w700
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height:420,),
            
            SizedBox(
              child: Center(
                child: Text(
                  'Swipe to Begin > > >',
                  style: GoogleFonts.heebo(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
            )

            
          ],
        ),
        
      ),
    );
  }
}