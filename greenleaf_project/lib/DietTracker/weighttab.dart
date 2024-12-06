import 'package:flutter/material.dart';
import 'package:greenleaf_project/DietTracker/insightchart.dart';
import 'package:greenleaf_project/DietTracker/see_all_data.dart';
import 'package:greenleaf_project/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Weighttab extends StatelessWidget {
  Weighttab({super.key});
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 40,
                decoration: const BoxDecoration(
                  color: deepPurpe,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    '7days',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: lightPurple)),
                child: const Center(
                  child: Text(
                    '1 month',
                    style: TextStyle(color: deepPurpe, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: lightPurple),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: const Center(
                  child: Text(
                    '1 year',
                    style: TextStyle(color: deepPurpe, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: const [
                Insightchart(),
                Insightchart(),
                Insightchart(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: const Alignment(0, 0.4),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotHeight: 10, dotWidth: 10, activeDotColor: Colors.grey),
              )),
          const SizedBox(
            height: 45,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const SeeAllData()));
                },
                child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundcard),
                    child: Center(
                      child: Text(
                        'See all data',
                        style: GoogleFonts.manrope(color: deepPurpe),
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
