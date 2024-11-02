import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hackathon_2024/slides/sample_slide.dart';
import 'package:flutter_hackathon_2024/ui/component/sample_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      // speakerInfo: FlutterDeckSpeakerInfo(
      //   name: 'Hibana',
      //   description: 'エンジニア',
      //   socialHandle: '@r5437198',
      // ),
      configuration: FlutterDeckConfiguration(
        background: const FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.solid(
            Color(0xFFFFFFFF),
          ),
          dark: FlutterDeckBackground.solid(
            Color(0xFF192638),
          ),
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
        ),
      ),
      slides: [
        SampleSlide(
            title: 'Sample',
            leftBuilder: (context) {
              return Center(
                child: SampleButton(label: 'Sampleだよ', onPressed: () {}),
              );
            }),
      ],
    );
  }
}
