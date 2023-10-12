import 'package:expensetracker/index.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
    
    final Expense expense;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 50,),
              Row(
                children: [
                  Text('\$${expense.amount.toStringAsFixed(2)}'), // 12.3433 => 12.34
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(width: 9,),
                      Text(expense.formattedDate),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}