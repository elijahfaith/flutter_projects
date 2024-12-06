import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:readmore/readmore.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:http/http.dart' as http;

class YourBody extends StatelessWidget {
  YourBody({super.key});

  final FlickManager flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
    Uri.parse('https://youtu.be/20uu_9tFMOo?si=s1Ati1yYcsyP0ywz'),
  ));

  String content =
      "You might experience some pain and aches as  your body changes to  accomodate your baby; after all he is growing quiet rapidly, Your will find out that your appetite has increased as you are eating for two. Ensure you take that vitamin your doctor prescribed and making healthier and food choices. Avoid Alchohol at all cost and skip the junk food, you will thank me later. Remember to exercise and do so moderately, talk to your Ob/gyn about choosing the right kind of exercise for your specific needs.  ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text(
                  'Your body',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text(
              'Your body at the 17th week',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ReadMoreText(
              content,
              trimLines: 6,
              textAlign: TextAlign.justify,
              trimMode: TrimMode.Line,
              trimCollapsedText: "show more",
              trimExpandedText: "show less",
              lessStyle:
                  const TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
              moreStyle:
                  const TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      )),
    );
  }
}
