import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/drop_down_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  final List sampleItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: CustomizeDropDown(
            items: widget.sampleItems
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item.toString(),
                    child: Text(
                      item.toString(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
}
