import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late AnimationController _textAnimationController;

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

    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _textAnimationController.dispose();
    super.dispose();
  }

  void _openMenu(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Menu",
      barrierColor: Colors.black.withOpacity(0.9), // dark overlay
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, anim1, anim2) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Colors.green, Colors.blue],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              color: Colors.indigo
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// 🔹 Close button
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.white, size: 50),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  /// 🔹 Logo
                  Image.asset(
                    "assets/images/coastlinedivinglogo.png",
                    height: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Coastline diving &\nEngineering Services",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.b612(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 40),

                  /// 🔹 Full Screen Menu Items
                  _buildMenuItem("Home"),
                  _buildMenuItem("About"),
                  _buildMenuItem("What we Do"),
                  _buildMenuItem("Area of Experience"),
                  _buildMenuItem("Our Clients"),
                  _buildMenuItem("Contact"),

                  const Spacer(),

                  /// 🔹 Footer
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "© 2025 Coastline Construction",
                          style: GoogleFonts.b612(
                            color: Colors.white70,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Developed by Coastline Diving & Engineering Services",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.b612(
                            color: Colors.white70,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1,
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
          alignment: Alignment.center,
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
                // borderRadius: const BorderRadius.only(
                //   bottomLeft: Radius.circular(0),  // curve bottom-left
                //   bottomRight: Radius.circular(500), // curve bottom-right
                // ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.b612(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    shadows: [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black54,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                ),
                Text(
                  "COASTLINE",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fanwoodText(
                    color: Colors.white,
                    fontSize: 50,
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
                SizedBox(height: 20,),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: const [
                            Colors.white70,
                            Colors.white,
                            Colors.white,
                          ],
                          stops: [
                            (_textAnimationController.value - 0.2).clamp(0.0, 1.0),
                            _textAnimationController.value,
                            (_textAnimationController.value + 0.2).clamp(0.0, 1.0),
                          ],
                        ).createShader(bounds);
                      },
                      child: Text(
                        "Diving & Engineering \nServices",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.b612(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          shadows: const [
                            Shadow(
                              blurRadius: 8,
                              color: Colors.black54,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          /// 🔹 Menu button (top-right)
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.drag_handle_outlined, color: Colors.white, size: 50),
              onPressed: () => _openMenu(context),
            ),
          ),

          Positioned(
            top: 0,
            right: 230,
            child: Image.asset("assets/images/coastlinedivinglogo.png", height: 200, color: Colors.white,)
          ),
        ],
      ),
    );
  }
}
