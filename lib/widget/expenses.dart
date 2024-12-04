import 'package:expense_tracker/widget/expenses_items/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart'; // Make sure this contains the Category class
import 'package:flutter/material.dart';
import 'package:expense_tracker/widget/ne_expense.dart';

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
        amount: 2000.9,
        date: DateTime.now(),
        category: Category.work),
  ];

  bool isEmpty = false;

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
      if (_registeredExpenses.length > 0) {
        isEmpty = false;
      }
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
      if (_registeredExpenses.length == 0) {
        isEmpty = true;
      }
    });

// for pop msg to undo and the expense has been deleted
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("EXPENSE Deleted"),
        action: SnackBarAction(
          label: "UNDO",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        )));
  }

  void _expenseoverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _addExpense));
  }

  @override
  Widget build(BuildContext context) {
    // Widget mainContent

    // if (_registeredExpenses.isEmpty) {
    //   // mainContent = ExpensesList(
    //   //     expenses: _registeredExpenses, onRemoved: _removeExpense);
    // }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Expense Tracker'),
          actions: [
            IconButton(onPressed: _expenseoverlay, icon: const Icon(Icons.add))
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Text("THE CHART"),
            Expanded(
                child: isEmpty
                    ? const Center(child: Text("NO Expense"))
                    : ExpensesList(
                        expenses: _registeredExpenses,
                        onRemoved: _removeExpense)),
          ],
        ));
  }
}
