import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileAboutPage extends StatelessWidget {
  MobileAboutPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SizedBox(height: 20),

        /// 🔹 About Company
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Who We Are",
            style: GoogleFonts.cabin(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Coastline Construction & Marine Services is a leading company "
                  "specializing in marine construction, scuba diving, underwater inspection, "
                  "and safety training. With years of expertise, we provide professional "
                  "solutions for both industrial and recreational marine needs.",
              style: GoogleFonts.b612(
                fontSize: 13,
                height: 1.5,
                color: Colors.black45,
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatCard("20", "TRAINED\nSWIMMERS", Icons.pool),
              _buildStatCard("80", "SATISFIED\nCUSTOMERS", Icons.emoji_people),
              _buildStatCard("20", "QUALIFIED\nTRAINERS", Icons.school),
            ],
          ),
        ),
        /// 🔹 Mission & Vision
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/coastlinedivingbannerone.jpeg", height: 200, fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Our Mission",
                        style: GoogleFonts.cabin(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "To deliver world-class marine services with a strong focus on "
                            "safety, sustainability, and innovation.",
                        style: GoogleFonts.b612(fontSize: 13, color: Colors.black45),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 5,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/coastlinedivingbannerthree.jpg", height: 200, fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Our Vision",
                        style: GoogleFonts.cabin(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "To be a trusted global leader in marine construction and "
                            "underwater services, empowering both industries and individuals.",
                        style: GoogleFonts.b612(fontSize: 13,color: Colors.black45),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        /// 🔹 Why Choose Us
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Why Choose Us?",
            style: GoogleFonts.cabin(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBullet("Experienced team of divers & engineers"),
              _buildBullet("Certified safety & training programs"),
              _buildBullet("State-of-the-art marine equipment"),
              _buildBullet("Trusted by leading industries & institutions"),
              _buildBullet("Passion for the ocean and marine environment"),
            ],
          ),
        ),

      ],
    );
  }

  Widget _buildStatCard(String number, String label, IconData icon) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.green, Colors.greenAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 28, color: Colors.white),
          const SizedBox(height: 8),
          Text(
            number,
            style: GoogleFonts.b612(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.b612(
              color: Colors.white.withOpacity(0.9),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }


  /// Custom bullet point widget
  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 18, color: Colors.green)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.b612(fontSize: 15, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
