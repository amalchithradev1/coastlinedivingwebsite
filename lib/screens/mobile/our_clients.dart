import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurClientsPage extends StatefulWidget {
  const OurClientsPage({super.key});

  @override
  State<OurClientsPage> createState() => _OurClientsPageState();
}

class _OurClientsPageState extends State<OurClientsPage> {
  final List<Map<String, String>> clients = [
    {
      "name": "Sri Selva Vinayaga Groups",
      "location": "Kanyakumari",
      "logo": "assets/images/sriselvavinayagalogo.jpg",
    },
    {
      "name": "V M & Co",
      "location": "Tamil Nadu, India",
      "logo": "assets/images/vmandcologo.png",
    },

  ];

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
              "Our Clients",
              style: GoogleFonts.abel(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Horizontal List of Clients
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: clients.length,
            itemBuilder: (context, index) {
              final client = clients[index];
              return Container(
                width: 185,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black38),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: client["logo"] != null && client["logo"]!.isNotEmpty
                          ? Image.asset(
                        client["logo"]!,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )
                          : Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.local_convenience_store_rounded,
                          size: 30,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Client Name
                    Text(
                      client["name"]!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.b612(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    if (client["location"]!.isNotEmpty)
                      Text(
                        client["location"]!,
                        style: GoogleFonts.b612(
                          fontSize: 11,
                          color: Colors.black54,
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
