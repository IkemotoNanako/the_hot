import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    // タイトル
    final titleData = FlTitlesData(
      topTitles: AxisTitles(
          axisNameWidget: Text('みんなの結果', style: customTextTheme.headlineLarge),
          axisNameSize: 100),
    );

    return Scaffold(
      body: Center(
        child: BarChart(
          BarChartData(
            titlesData: titleData,
          ),
        ),
      ),
    );
  }
}
