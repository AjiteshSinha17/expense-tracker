import 'package:expense_tracker/widget/expenses_items/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Game',
        amount: 1999.9,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Flutter',
        amount: 200.9,
        date: DateTime.now(),
        category: Category.work),
  ];

  void _expenseoverlay() {
    showModalBottomSheet(
        context: context, builder: (ctx) => const Text("show the data"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CHART'),
          actions: [
            IconButton(onPressed: _expenseoverlay, icon: const Icon(Icons.add))
          ],
          centerTitle: true,
        ),
        body: ExpensesList(expenses: _registeredExpenses));
  }
}
