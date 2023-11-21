import 'package:flutter/material.dart';
import 'package:flutter_study_memo/public/util/memo.dart';
import 'package:flutter_study_memo/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Memo()),
        ],

      child: const MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen()
    );
  }
}


