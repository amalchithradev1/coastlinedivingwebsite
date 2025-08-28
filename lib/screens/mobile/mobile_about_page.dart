import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MobileAboutPage extends StatefulWidget {
  const MobileAboutPage({super.key});

  @override
  State<MobileAboutPage> createState() => _MobileAboutPageState();
}

class _MobileAboutPageState extends State<MobileAboutPage> with SingleTickerProviderStateMixin{

  late AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                "Registered Diving Company in India",
                style: GoogleFonts.abel(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                textAlign: TextAlign.center,
                "Welcome to Coastline diving & Engineering Services Our company based in Kanniyakumari, Tamilnadu, India. We provide various underwater Services, Including civil engineering, construction,marine salvage,wreck operational, placement works, shipping, powerplants, dams, oil & gas sectors across the Indian region. We specialised in providing effective solution for Irrigation needs and Breakwater placing works & block placing",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Image.asset(
              "assets/images/coastlinedivingfour.jpg", height: 500,
              width: double.infinity,
              fit: BoxFit.cover,),
          ),
          Center(
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.7),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Center(
                child: Text("Know More   !", style: GoogleFonts.abel(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),


          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Inshore Diving",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                textAlign: TextAlign.center,
                "Unlock depths of success with our expertise in inshore commercial diving—specializing in pipeline work, salvage & precision port & jetty construction.",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Center(
                child: Text("Know More   !", style: GoogleFonts.abel(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ),


          SizedBox(height: 20,),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Offshore Diving",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                textAlign: TextAlign.center,
                "Dive into excellence with our leading offshore diving expertise, Mixed Gas & Air Diving Support Services.",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Center(
                child: Text("Know More   !", style: GoogleFonts.abel(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ),



          SizedBox(height: 20,),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Shipping",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "Navigate excellence with Seafolk. India's diving experts offer unparalleled solutions for shipping – efficient, safe, and compliant underwater services.",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Center(
                child: Text("Know More   !", style: GoogleFonts.abel(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ),
        ]
    );
  }
}

