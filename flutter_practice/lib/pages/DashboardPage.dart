import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DasbboarPpageState();
}

class _DasbboarPpageState extends State<DashboardPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("DashBoard", style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            )),
            SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceEvenly,
          barTouchData: BarTouchData(enabled: true),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return Text('Mon');
                    case 1:
                      return Text('Tue');
                    case 2:
                      return Text('Wed');
                    case 3:
                      return Text('Thu');
                    case 4:
                      return Text('Fri');
                    case 5:
                      return Text('Sat');
                    case 6:
                      return Text('Sun');
                    default:
                      return Text('');
                  }
                },
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false)
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: true,
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(toY: 8, color: Colors.blue, width: 20),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(toY: 10, color: Colors.blue, width: 14),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(toY: 14, color: Colors.blue, width:14),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(toY: 15, color: Colors.blue, width: 14),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(toY: 13, color: Colors.blue, width: 14),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(toY: 10, color: Colors.blue, width: 14),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(toY: 6, color: Colors.blue, width: 14),
              ],
            ),
          ],
        ),
      ),
    )]
        ),
      )
    );
  }
}