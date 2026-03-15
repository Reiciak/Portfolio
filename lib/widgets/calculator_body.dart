import 'package:flutter/material.dart';
import 'package:kalkulator/features/widgets/calculator_display.dart';
import 'package:kalkulator/features/widgets/calculator_numbers_grid.dart';
import 'package:kalkulator/features/widgets/calculator_operations_grid.dart';

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Expanded(flex: 2, child: CalculatorDisplay()),
          const SizedBox(height: 8),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(flex: 3, child: CalculatorNumbersGrid()),
                const SizedBox(width: 8),
                const Expanded(flex: 2, child: CalculatorOperationsGrid()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
