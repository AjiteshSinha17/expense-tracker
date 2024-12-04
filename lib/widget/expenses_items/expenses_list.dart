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
            onDismissed: (direction) {
              onRemoved(expenses[index]);
            },
            key: ValueKey(expenses[index]),
            child: ExpensesItems(expenses[index])));
  }
}
