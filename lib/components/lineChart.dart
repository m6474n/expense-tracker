import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:expense_tracker/utility/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({super.key});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  List dropList = ['weekly', 'monthly'];
  List<Color> gradColor = [
    primaryColor, secondaryColor
  ]; 
  var selectedVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1 ,color: borderColor),
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Expence Chart",
                style: TextStyle(fontFamily: "Inter bold", fontSize: 16),
              ),
              Container(
                width: 120,
                child: CustomDropdown(
                    decoration: CustomDropdownDecoration(
                        closedBorder: Border.all(color: borderColor),
                        hintStyle:
                            TextStyle(fontFamily: "Inter thin", fontSize: 12),
                        headerStyle:
                            TextStyle(fontFamily: "Inter thin", fontSize: 12),
                        listItemStyle:
                            TextStyle(fontFamily: "Inter thin", fontSize: 12)),
                    closedHeaderPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    items: dropList,
                    onChanged: (newVal) {
                      print('newVal: $newVal');
                      setState(() {
                        selectedVal = newVal;
                      });
                    }),
              )
            ],
          ),
         
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Container(
              padding: EdgeInsets.only(top: 18),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: selectedVal == "weekly" ? 7 : 11,
                    minY: 0,
                    maxY: 10,
                    // baselineX: 2,
                    
                    // baselineY: 4,
                    titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(
                        sideTitles:SideTitles(
                          reservedSize: 30,
                          showTitles: true,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                        
                          showTitles: true,
                          reservedSize: 20,
                          interval:selectedVal == "monthly"?  2: 1,
                          
                          getTitlesWidget: (value, meta) {
                            
                            if(selectedVal == 'monthly'){
                              switch (value.toInt()) {
                              case 0:
                                return Text('Jan',
                                    style: TextStyle(fontSize: 12));
                              case 1:
                                return Text('Feb',
                                    style: TextStyle(fontSize: 12));
                              case 2:
                                return Text('Mar',
                                    style: TextStyle(fontSize: 12));
                              case 3:
                                return Text('Apr',
                                    style: TextStyle(fontSize: 12));
                              case 4:
                                return Text('May',
                                    style: TextStyle(fontSize: 12));
                              case 5:
                                return Text('Jun',
                                    style: TextStyle(fontSize: 12));
                              case 6:
                                return Text('Jul',
                                    style: TextStyle(fontSize: 12));
                              case 7:
                                return Text('Aug',
                                    style: TextStyle(fontSize: 12));
                              case 8:
                                return Text('Sep',
                                    style: TextStyle(fontSize: 12));
                              case 9:
                                return Text('Oct',
                                    style: TextStyle(fontSize: 12));
                              case 10:
                                return Text('Nov',
                                    style: TextStyle(fontSize: 12));
                              case 11:
                                return Text('Dec',
                                    style: TextStyle(fontSize: 12));
                              default:
                                return Text('', style: TextStyle(fontSize: 12));
                            }
                            }else{
                              switch (value.toInt()) {
                              case 0:
                                return Text('Mon',
                                    style: TextStyle(fontSize: 12));
                              case 1:
                                return Text('Tue',
                                    style: TextStyle(fontSize: 12));
                              case 2:
                                return Text('Wed',
                                    style: TextStyle(fontSize: 12));
                              case 3:
                                return Text('Thu',
                                    style: TextStyle(fontSize: 12));
                              case 4:
                                return Text('Fri',
                                    style: TextStyle(fontSize: 12));
                              case 5:
                                return Text('Sat',
                                    style: TextStyle(fontSize: 12));
                              case 6:
                                return Text('Sun',
                                    style: TextStyle(fontSize: 12));
                             
                            }
                            return Container();
                            
                            }
                          },
                          
                        ),
                      ),
                      rightTitles:const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(border: Border.all(width: 1, color: borderColor)),
                    gridData:const FlGridData(
                      drawHorizontalLine: true,
                      drawVerticalLine: true,
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        gradient: gradientColor,
                        belowBarData: BarAreaData(color: primaryColor.withOpacity(0.5)),

// curveSmoothness: 0.6,
                        isCurved: true,
                        dotData: FlDotData(show: false),
                        spots: [
                          FlSpot(0, 0),
                          FlSpot(1, 4),
                          FlSpot(2, 2),
                          FlSpot(3, 5.2),
                          FlSpot(4.3, 3),
                          FlSpot(5, 6),
                          FlSpot(6.2, 3.5),
                          FlSpot(7, 2),
                          FlSpot(8, 7),
                          FlSpot(9, 5),
                          FlSpot(10, 9),
                          FlSpot(11, 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}