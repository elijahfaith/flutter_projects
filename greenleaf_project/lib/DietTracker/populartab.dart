import 'package:flutter/material.dart';

class Populartab extends StatelessWidget {
  const Populartab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Vegetables',
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            RowGrideview(
                image: 'assets/images/pepper.jpg',
                secondimage: 'assets/images/potatoe.jpg'),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/carrot.jpg',
              secondimage: 'assets/images/grape.jpg',
            ),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/Broccoli.webp',
              secondimage: 'assets/images/daikon.jpg',
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Protein',
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            RowGrideview(
                image: 'assets/images/beef.jpg',
                secondimage: 'assets/images/Egg.webp'),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/chicken.jpg',
              secondimage: 'assets/images/fish.jpg',
            ),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/crayfish.jpg',
              secondimage: 'assets/images/milk.jpg',
            ),
          ],
        ),
        
        SizedBox(height: 10),
        Text(
          'Fruits',
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            RowGrideview(
                image: 'assets/images/orange.jpg',
                secondimage: 'assets/images/pawpaw.jpg'),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/apple.jpg',
              secondimage: 'assets/images/cucumber.webp',
            ),
            SizedBox(height: 10),
            RowGrideview(
              image: 'assets/images/strawberry.jpg',
              secondimage: 'assets/images/mangoes.jpg',
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class RowGrideview extends StatelessWidget {
  final String image;
  final String secondimage;
  const RowGrideview(
      {super.key, required this.image, required this.secondimage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          width: 170,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            color: const Color(0xFF6A0D6A),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
          width: 170,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(secondimage), fit: BoxFit.cover),
              color: const Color.fromARGB(255, 250, 226, 254),
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}
