import 'package:flutter/material.dart';
import 'package:flutter_month_select/flutter_month_select.dart';

void main() {
  runApp(const MyApp());
}

/// this is the example for select month picker
/// press bottom button for open month select dialogue box
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /// this method we can use for month select
          DateTime? picker = await showMonthYearPicker(
              context: context,
              initialDate: DateTime(2023),
              firstDate: DateTime(2022),
              lastDate: DateTime.now());

          /// we can get the selected month in picker
          /// note picker can be nullable
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
