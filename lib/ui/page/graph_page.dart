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
      // 右のメモリを消す
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 100,
          interval: 20, // 最大値を5で割るとかが良さそう
          getTitlesWidget: (value, meta) => SideTitleWidget(
            axisSide: meta.axisSide,
            child: Text(
              value.toString(),
              style: customTextTheme.headlineLarge?.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );

    // 左のメモリの調整

    const barNum = 14;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarChart(
          BarChartData(
            titlesData: titleData,
            // グリッドを消す
            gridData: const FlGridData(show: false),
            // 枠線を上下左右だけ消す
            borderData: FlBorderData(
              show: true,
              border: const Border(
                top: BorderSide.none,
                right: BorderSide.none,
                left: BorderSide.none,
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),

            barGroups: [
              for (int i = 0; i < barNum; i++)
                BarChartGroupData(x: 1, barRods: [
                  BarChartRodData(
                      fromY: 0,
                      toY: i.toDouble() * i.toDouble(),
                      width: 30,
                      color: Colors.amber,
                      borderRadius: const BorderRadius.all(Radius.zero)),
                ]),
            ],
          ),
        ),
      ),
    );
  }
}
