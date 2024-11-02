import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SampleSlide extends FlutterDeckSlideWidget {
  final String title;
  final WidgetBuilder? leftBuilder;
  final WidgetBuilder? rightBuilder;

  SampleSlide({
    required this.title,
    this.leftBuilder,
    this.rightBuilder,
  }) : super(
          configuration: FlutterDeckSlideConfiguration(
            route: '/slide-$title',
            header: FlutterDeckHeaderConfiguration(
              title: title,
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: Color(0xFF192638),
          leftBackgroundColor: Color(0xFF192638),
        ),
      ),
      leftBuilder: leftBuilder ?? (context) => const SizedBox.shrink(),
      rightBuilder: rightBuilder ?? (context) => const SizedBox.shrink(),
    );
  }
}
