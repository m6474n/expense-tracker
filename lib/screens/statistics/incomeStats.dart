import 'package:expense_tracker/components/piChart.dart';
import 'package:flutter/material.dart';

class IncomeStatScreen extends StatelessWidget {
  const IncomeStatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [Text("Income"),CustomPiChart()],),
    );
  }
}