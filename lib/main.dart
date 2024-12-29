import 'package:diamon_price_predictor/Screen/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/apiProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => apiProvider(),
      child: MaterialApp(
        title: 'Heart Disease Predictor',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Myhomepage(),
      ),
    );
  }
}

