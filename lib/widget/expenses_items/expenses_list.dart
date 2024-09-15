import 'package:expense_tracker/widget/expenses_items/expenses_items.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';



class ExpensesList extends StatelessWidget{
  
const ExpensesList({
  super.key,
  required this.expenses});


 final List<Expense> expenses ;

  @override
  Widget build(BuildContext context) {

 

   return  ListView.builder(shrinkWrap: true ,
   
    itemCount: expenses.length ,
     
    itemBuilder: (cxt , index ) =>  ExpensesItems(expenses[index]), 
   
      
       
       scrollDirection: Axis.vertical,
       
          );
      
  }
}

