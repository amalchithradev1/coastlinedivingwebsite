import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  // Helper to open phone or email
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.indigo,
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Contact Us",
                style: GoogleFonts.abel(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Phone 1
            _buildContactRow(
              icon: Icons.call,
              text: "+91 6379281896",
              onTap: () => _launchUrl("tel:+916379281896"),
            ),

            // Phone 2
            _buildContactRow(
              icon: Icons.call,
              text: "+91 9633544793" ,
              onTap: () => _launchUrl("tel:+916379281896"),
            ),

            // Phone 3
            _buildContactRow(
              icon: Icons.call,
              text: "+91 8129240852",
              onTap: () => _launchUrl("tel:+918129240852"),
            ),

            // Email
            _buildContactRow(
              icon: Icons.mail_outline,
              text: "soorajkoduvila885@gmail.com",
              onTap: () => _launchUrl("mailto:soorajkoduvila885@gmail.com"),
            ),

            // Address
            _buildContactRow(
              icon: Icons.location_on,
              text: "Kanniyakumari, Tamil Nadu, India",
              onTap: () => _launchUrl(
                  "https://www.google.com/maps/search/?api=1&query=8.088909,77.556320"),
            ),

            const SizedBox(height: 20),

            // Google Map
            Container(
              height: 250,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: const LatLng(8.088909, 77.556320),
                  initialZoom: 14,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png',
                    subdomains: ['a', 'b', 'c', 'd'],
                    retinaMode: true,
                    userAgentPackageName: "com.example.coastlinedivingweb",
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: const LatLng(8.088909, 77.556320),
                        width: 80,
                        height: 80,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Custom Row Widget
  Widget _buildContactRow({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.abel(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
