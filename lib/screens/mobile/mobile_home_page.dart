import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      "assets/videos/coastlinedivingbgvideoone.mp4",
    )
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.setVolume(0); // mute for background
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openMenu(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Menu",
      barrierColor: Colors.black.withOpacity(0.7), // dark background overlay
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75, // menu width
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.green, Colors.blue],
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
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 🔹 Close button
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white, size: 28),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Icon(Icons.waves, color: Colors.white, size: 40),
                  ),
                  /// 🔹 Logo
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Coastline Construction &\nMarine Services",
                      style: GoogleFonts.b612(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  /// 🔹 Menu Items
                  _buildMenuItem("Home"),
                  _buildMenuItem("About"),
                  _buildMenuItem("Service"),
                  _buildMenuItem("Courses"),
                  _buildMenuItem("Gallery"),
                  _buildMenuItem("Contact"),

                  const Spacer(),

                  /// 🔹 Footer
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "© 2025 Coastline Construction",
                      style: GoogleFonts.b612(color: Colors.white70, fontSize: 12,decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Developed Coastline Construction & Marine Services",
                      style: GoogleFonts.b612(color: Colors.white70, fontSize: 12, decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0), // slide in from right
            end: Offset.zero,
          ).animate(anim1),
          child: child,
        );
      },
    );
  }

  Widget _buildMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context); // close menu
          // 🔹 TODO: trigger scrollToSection from parent
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title.toUpperCase(),
            style: GoogleFonts.b612(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          /// 🔹 Video background
          _controller.value.isInitialized
              ? SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover, // cover full screen without black bars
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),  // curve bottom-left
                  bottomRight: Radius.circular(500), // curve bottom-right
                ),
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          )
              : const Center(child: CircularProgressIndicator()),

          /// 🔹 Company name in center
          Center(
            child: Text(
              "Coastline Construction & Marine Services",
              textAlign: TextAlign.center,
              style: GoogleFonts.allan(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 8,
                    color: Colors.black54,
                    offset: Offset(2, 2),
                  )
                ],
              ),
            ),
          ),
          /// 🔹 Menu button (top-right)
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white, size: 30),
              onPressed: () => _openMenu(context),
            ),
          ),

          Positioned(
            top: 550,
            left: 210,
            child: Image.asset("assets/images/coastlinedivinglogo.png", height: 250,)
          ),
        ],
      ),
    );
  }
}
