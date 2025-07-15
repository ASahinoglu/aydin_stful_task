import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _allCounterValues = List.generate(5, (_) => 0);

  void _updateCounterValue(int index, int newValue) {
    setState(() {
      _allCounterValues[index] = newValue;
    });
  }

  int get _totalSum =>
      _allCounterValues.fold(0, (sum, current) => sum + current);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [
            CounterCard(
                onCounterChanged: (newValue) =>
                    _updateCounterValue(0, newValue)),
            CounterCard(
                onCounterChanged: (newValue) =>
                    _updateCounterValue(1, newValue)),
            CounterCard(
                onCounterChanged: (newValue) =>
                    _updateCounterValue(2, newValue)),
            CounterCard(
                onCounterChanged: (newValue) =>
                    _updateCounterValue(3, newValue)),
            CounterCard(
                onCounterChanged: (newValue) =>
                    _updateCounterValue(4, newValue)),
            const SizedBox(height: 15),
            Text(
              'Summe: $_totalSum',
            ),
          ],
        ),
      ),
    );
  }
}
