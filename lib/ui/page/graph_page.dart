import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/answer.dart';
import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/ui/controller/answers_controller.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GraphPage extends ConsumerWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 左のメモリの調整

    const barNum = 14;

    return StreamBuilder<List<Answer>>(
      stream: ref.watch(answersControllerProvider),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null) {
          return const Center(child: CircularProgressIndicator());
        }

        // タイトル
        final titleData = FlTitlesData(
          topTitles: AxisTitles(
              axisNameWidget:
                  Text('みんなの結果', style: customTextTheme.headlineLarge),
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
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 100,
              showTitles: true,
              getTitlesWidget: (value, meta) => SideTitleWidget(
                axisSide: meta.axisSide,
                child: Column(
                  children: [
                    Image.network(
                      data.countMap[value.toInt()]?.$2.imageUrl ?? '',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
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
                  for (final entry in data.countMap.entries)
                    BarChartGroupData(x: entry.value.$2.id, barRods: [
                      BarChartRodData(
                          fromY: 0,
                          toY: entry.value.$1.toDouble(),
                          width: 30,
                          color: Colors.amber,
                          borderRadius: const BorderRadius.all(Radius.zero)),
                    ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

extension on List<Answer> {
  // データの集計
  Map<int, (int, HotItem)> get countMap {
    final map = <int, (int, HotItem)>{};
    for (final answer in this) {
      map[answer.hotItem.id] =
          ((map[answer.hotItem.id]?.$1 ?? 0) + 1, answer.hotItem);
    }
    return map;
  }
}
