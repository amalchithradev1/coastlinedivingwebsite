import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AreaOfExperience extends StatefulWidget {
  const AreaOfExperience({super.key});

  @override
  State<AreaOfExperience> createState() => _AreaOfExperienceState();
}

class _AreaOfExperienceState extends State<AreaOfExperience> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                "Area of experience",
                style: GoogleFonts.abel(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 280,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex:4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/areaofexperienceone.jpg", height: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),

                  const SizedBox(width: 16),

                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ships, Floaters & Fixed Platforms",
                          style: GoogleFonts.abel(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "We provide comprehensive underwater services for all types of vessels, barges, rigs, floaters, and fixed platforms. Backed by skilled diving professionals and advanced equipment, we deliver reliable solutions of marine and offshore operations.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),



          SizedBox(height: 20,),
          Container(
            height: 260,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/areaofexperiencetwo.jpg", height: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),

                  const SizedBox(width: 16),

                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Underwater Welding,Cutting & Salvage Work",
                          style: GoogleFonts.abel(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "We have assembled a team of very competent and highly experienced people for this specific (Welding, Cutting and Salvage) job and teams are available on short notice 24/7 with complete equipment and accessories",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 20,),
          Container(
            height: 260,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/areaofexperiencethree.jpg", height: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),

                  const SizedBox(width: 16),

                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "U/W Inspection, Repair & Maintenance Work",
                          style: GoogleFonts.abel(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "We offer a wide range of Underwater Inspection , Repair and Maintenance of all types of Vessels , Floaters , Fixed Platform and Marine Construction work using our experience Diver and specially Designed equipment.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 20,),
          Container(
            height: 280,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/areaofexperiencefour.jpg", height: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),

                  const SizedBox(width: 16),

                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Underwater Survey",
                          style: GoogleFonts.abel(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Our qualified inspection team provides complete diving solutions for underwater surveys, engineering, and construction. With highly experienced diving personnel, we ensure safe, efficient, and excellent results, delivering reliable completion for all subsea projects.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 20,),
          Container(
            height: 260,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("assets/images/areaofexperiencefive.jpg", height: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),

                  const SizedBox(width: 16),

                  Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Diving & Offshore\nPersonnel Supply",
                          style: GoogleFonts.abel(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Our people are the biggest asset of the company. Presently we hold data base of more than 100+ peoples of different categories to supply our prestigious Client on short notice 24/7 and 365 Days in the year.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: Image.asset("assets/images/coastlinedivingseven.jpg"),
          )

        ]
    );
  }
}
