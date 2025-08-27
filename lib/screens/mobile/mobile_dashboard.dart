import 'package:coastlinedivingweb/screens/mobile/mobile_gallery_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'mobile_about_page.dart';
import 'mobile_footer_page.dart';
import 'mobile_home_page.dart';


class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  bool isImageVisible = false;
  bool isScrolledPastHome = false;


  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final services = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _onScroll() {
    final homeContext = homeKey.currentContext;
    if (homeContext != null) {
      final RenderBox renderBox = homeContext.findRenderObject() as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero).dy;

      // If top of home section is above app bar (i.e. scrolled past)
      if (position < 0 && !isScrolledPastHome) {
        setState(() => isScrolledPastHome = true);
      } else if (position >= 0 && isScrolledPastHome) {
        setState(() => isScrolledPastHome = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (_) {
                  _onScroll();
                  return true;
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.8,
                            key: homeKey,
                            child: HomePageMobile()
                          ),
                          Container(
                              key: aboutKey,
                              child: MobileAboutPage()
                          ),
                          Container(
                              key: projectsKey,
                              child: MobileGalleryPage()
                          ),
                          Container(
                            child: MobileFooterPage(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }


}
