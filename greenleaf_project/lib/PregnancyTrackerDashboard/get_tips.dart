import 'package:flutter/material.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/more_tip.dart';
import 'package:greenleaf_project/components/tips_component.dart';
import 'package:video_player/video_player.dart';
import 'package:readmore/readmore.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class GetTips extends StatelessWidget {
  const GetTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left:20, right: 20, top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text(
              'Tips',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 28,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 20,
            ),
            tips_component(
                SubText:
                    'If you are planning to start a family,\nor just found out that.....',
                image: 'assets/images/pregimage.png',
                text: 'Get early prenatal care'),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const MoreTip()));
                      },
              child: tips_component(
                  SubText:
                      'Ask your doctor which prenatal\nvitamins are best to for you..',
                  image: 'assets/images/medimage.png',
                  text: 'Take prenatal vitamin'),
            ),
            const SizedBox(
              height: 20,
            ),
            tips_component(
                SubText:
                    'If you are planning to start a family,\nor just found out that.....',
                image: 'assets/images/pregimage.png',
                text: 'Get early prenatal care'),
            const SizedBox(
              height: 20,
            ),
            tips_component(
                SubText:
                    'Ask your doctor which prenatal\nvitamins are best to for you..',
                image: 'assets/images/medimage.png',
                text: 'Take prenatal vitamin')
          ],
        ),
      )),
    );
  }
}

// 
// 