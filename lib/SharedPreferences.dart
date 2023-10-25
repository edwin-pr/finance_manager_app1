import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExpenseTrackingScreen extends StatelessWidget {
  // ... (Previous code)

  void _addExpense(BuildContext context, Expense expense) async {
    final prefs = await SharedPreferences.getInstance();

    final expenseList = prefs.getStringList('expenses') ?? [];

    expenseList.add(expense.toString()); // Convert the Expense object to a string representation.

    await prefs.setStringList('expenses', expenseList);

    Navigator.pop(context); // Close the expense input screen after adding the expense.
  }

  // ... (Rest of the code)
}
