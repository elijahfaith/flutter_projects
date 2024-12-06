import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/auto_image.dart';
import 'package:greenleaf_project/G-Chat/newpost.dart';
import 'package:greenleaf_project/components/comment.dart';
import 'package:greenleaf_project/components/postavatar.dart';
import 'package:readmore/readmore.dart';

class Gchatcomponent extends StatelessWidget {
  Gchatcomponent({super.key});
  String content =
      "It seems hard to believe, but we've been together for almost six months now. That's not very long in the grand scheme of things, but it's long enough for me to know how much I love you. I remember (but only vaguely now!) how my life was before I met you and I never want to go back to that dreary existence again. That was when I had nothing much to look forward to except a pizza delivery and a rented movie on Saturday night, nothing much to get up for in the morning except a day at work. Having had my heart broken twice already, I was becoming something of a hermit; sure I never wanted to get involved with anyone again. I was to the point where I believed that the happily ever after kind of love was only found in fiction and in fairy tales--but then I met you. Thank goodness the substitute mailman (or is it letter carrier now?) got our apartment numbers mixed up and I got a chance to play Mr. Speedy Delivery. The mutual attraction we felt for each other that day has changed my life forever. It was almost too much to hope for (because I have such strong opinions about everything), but we even have the same views on the war and the economy. We're never at a loss for words or things to talk about--that is, when our lips are free to speak! Now I believe in love again, because I believe in you. And I function at warp speed now because--it thrills me to say it--you actually believe in me! Leah, you've brought me so much happiness and joy that I can scarcely contain it all. I'm sure beams of light radiate from me wherever I go. I noticed a few raised eyebrows at work when I started coming in bright and early (on time, every time!), smiling and energized, humming some love song I heard on the radio while driving in. A couple of the guys wanted to know what's up with me, but they don't understand I am filled with secrets that cannot be shared or even expressed in words. So I just told them that I'm seeing someone and it's the real thing this time. It's very strange because, even when we're apart, I feel that I'm still with you. I remember what it's like to hold you, to kiss you, to make love to you, as those delicious sensations never really leave me. We respond to each other so naturally and completely I believe the gods must have created us to complete each other's existence. Ours is a union that reaches beyond the mere physical into mystical planes that take my breath away. You are part of my very being now and I could never be complete or whole without you. Tell me I will never again have to return to that mundane existence I knew before I met you! This morning I woke at dawn, still wrapped in the memory of last night, repeating over and over that line from that old Hollies' song: Sometimes, all I need is the air that I breathe and to love you. I know what that means now because I know how that feels now. Leah, tell me we can always be together! Tell me all we need is one apartment key! I love you.";
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              postavatar(),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dupe Adeleke',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic),
                  ),
                  Text('Gynecologist, Obstetrician')
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Life and Relationships',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 20),
          AutoImageSlider(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(                Icons.favorite_border_outlined,
                size: 30,
              ),
              SizedBox(width: 5),
              Text('47'),
              SizedBox(width: 5),
              Icon(
                Icons.mode_comment_outlined,
                size: 30,
              ),
              SizedBox(width: 5),
              Text('2')
            ],
          ),
          const SizedBox(height: 10),
          ReadMoreText(
            content,
            trimLines: 5,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: "continue reading",
            trimExpandedText: "show less",
            lessStyle:
                const TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
            moreStyle:
                const TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const postavatar(),
                comment(
                  text:
                      'Totally i like it. Even tried making it.\nBut where to find tasty raspberries',
                  color: const Color.fromARGB(255, 239, 238, 238),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'View all 2 comments',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w200,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 30),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RawMaterialButton(
                constraints: const BoxConstraints.tightFor(width: 60, height: 60),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Newpost()));
                },
                shape: const CircleBorder(),
                fillColor: Colors.purple,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
