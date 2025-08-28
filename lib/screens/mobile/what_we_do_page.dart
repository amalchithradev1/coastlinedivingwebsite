import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatWeDoPage extends StatefulWidget {
  const WhatWeDoPage({super.key});

  @override
  State<WhatWeDoPage> createState() => _WhatWeDoPageState();
}

class _WhatWeDoPageState extends State<WhatWeDoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                "What we do",
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
            child: Center(
              child: Text(
                "A fully integrated Underwater Diving Services provider",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/images/coastlinedivingsix.jpg", height: 300,
              width: double.infinity,
              fit: BoxFit.cover,),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left:10, right: 10),
              child: Column(
                children: [
                  Text(
                    "INSHORE DIVING",
                    style: GoogleFonts.abel(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text("Unlock depths of success with our expertise in inshore commercial diving—specializing in pipeline work, salvage & precision port & jetty construction.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward, color: Colors.black,),
                  )
                ],
              ),
            ),
          ),



          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/images/coastlinedivingfive.jpg", height: 300,
              width: double.infinity,
              fit: BoxFit.cover,),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left:10, right: 10),
              child: Column(
                children: [
                  Text(
                    "OFFSHORE DIVING",
                    style: GoogleFonts.abel(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text("Dive into excellence with our leading offshore diving expertise, Mixed Gas & Air Diving Support Services",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward, color: Colors.black,),
                  )
                ],
              ),
            ),
          ),


          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/images/coastlinedivingsix.webp", height: 300,
              width: double.infinity,
              fit: BoxFit.cover,),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left:10, right: 10),
              child: Column(
                children: [
                  Text(
                    "ROV SERVICES",
                    style: GoogleFonts.abel(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text("Our expertise lies in the seamless provision of quality ROV Services and innovate tooling solution, catering to both shallow and Deepwater application.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward, color: Colors.black,),
                  )
                ],
              ),
            ),
          ),

        ]
    );
  }
}
