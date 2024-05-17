import 'package:flutter/cupertino.dart';
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
      home: const DemoMonthSelector(),
    );
  }
}

class DemoMonthSelector extends StatelessWidget {
  const DemoMonthSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter month picker"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            DateTime? picker = await showMonthYearPicker(context: context, initialDate: DateTime(2023), firstDate: DateTime(2022), lastDate: DateTime(2050));

            /// we can get the selected month in picker
            /// note picker can be nullable
          },
          child: const Text("Click here to open month picker"),
        ),
      ),
    );
  }
}
