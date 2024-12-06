import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:readmore/readmore.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class YourBaby extends StatelessWidget {
  YourBaby({super.key});

  final FlickManager flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
    Uri.parse('https://youtu.be/3kVLhr5xB48?si=XQszeyXpZ-_-Bz5O'),
  ));

  String content =
      "At 17th weeks your baby's skeleton is now bone as it changed from being a soft cartilage. The placenta is growing steadily as it provides your little one with nutrients and oxygen and also remove waste. The lungs are operational so is the circulatory system, your baby is growing well.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(centerTitle: true, title:const Text(
                  'Your baby',
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
              'Your baby at the 17th week',
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
              trimLines: 5,
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
