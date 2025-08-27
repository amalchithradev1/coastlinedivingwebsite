import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MobileGalleryPage extends StatefulWidget {
  const MobileGalleryPage({super.key});

  @override
  State<MobileGalleryPage> createState() => _MobileGalleryPageState();
}

class _MobileGalleryPageState extends State<MobileGalleryPage> {

  final List<Map<String, String>> bannerData = [
    {
      "image": "assets/images/coastlinedivingbannerone.jpeg",
      "text": "Coastline Construction & Marine Services",
    },
    {
      "image": "assets/images/coastlinedivingbannertwo.webp",
      "text": "Expert Scuba Diving & Underwater Solutions",
    },
    {
      "image": "assets/images/coastlinedivingbannerthree.jpg",
      "text": "Your Trusted Partner in Marine Services",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gallery",
            style: GoogleFonts.cabin(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10,),
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              viewportFraction: 1.0, // full width
              enlargeCenterPage: false,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
            items: bannerData.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(item["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
