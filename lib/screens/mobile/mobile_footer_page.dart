import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileFooterPage extends StatefulWidget {
  const MobileFooterPage({super.key});

  @override
  State<MobileFooterPage> createState() => _MobileFooterPageState();
}

class _MobileFooterPageState extends State<MobileFooterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: Text(
        "© 2025 Coastline Construction & Marine Services.\nAll Rights Reserved.",
        textAlign: TextAlign.center,
        style: GoogleFonts.b612(color: Colors.black54, fontSize: 12),
      ),
    );
  }
}
