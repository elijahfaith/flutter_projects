import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final myitems = [
    Image.asset('assets/images/lr1.jpeg'),
    Image.asset('assets/images/lr2.jpg'),
    Image.asset('assets/images/lr3.jpg'),
    Image.asset('assets/images/lr4.jpg'),
    Image.asset('assets/images/lr5.jpg')
  ];

  int MycurentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              aspectRatio: 5.0,
              onPageChanged: (index, reason) {
                setState(() {
                  MycurentIndex = index;
                });
              },
            ),
            items: myitems),
        AnimatedSmoothIndicator(
          activeIndex: MycurentIndex,
          count: myitems.length,
          effect: WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Colors.grey.shade200,
              spacing: 10,
              activeDotColor: Colors.grey.shade900),
        )
      ],
    );
  }
}
