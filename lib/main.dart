import 'package:elibrary/providers/student_provider.dart';
import 'package:elibrary/providers/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StudentProvider(context: context),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(context: context),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
