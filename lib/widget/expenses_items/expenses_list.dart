import 'package:expense_tracker/widget/expenses_items/expenses_items.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoved});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoved;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: expenses.length,
        itemBuilder: (cxt, index) => Dismissible(
            key: ValueKey(expenses[index]),
            background: Container(
                color: Theme.of(context)
                    .colorScheme
                    .onPrimaryContainer
                    .withOpacity(0.80),
                margin: EdgeInsets.symmetric(
                    horizontal:
                        Theme.of(context).cardTheme.margin!.horizontal)),
            onDismissed: (direction) {
              onRemoved(expenses[index]);
            },
            child: ExpensesItems(expenses[index])));
  }
}
