import 'package:flutter/material.dart';
// import 'item.dart';
/// Flutter code sample for [Scaffold].

void main() => runApp(const ScaffoldExampleApp());

class ScaffoldExampleApp extends StatelessWidget {
  const ScaffoldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gallery'),
        titleSpacing: 00.0, //titlespacing which takes in double as a parameter and in this case,
        // it is set to 00.0 to keep text close together.
        centerTitle: true,
        toolbarHeight: 50.2, //  provides a shadow underneath the AppBar which in turn makes it look elevated.
        toolbarOpacity: 0.8, // toolBarOpacity is responsible for controlling the opacity of the toolbar portion of the appBar.
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25)
          ),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),

      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {_count++; if(_count==20){_count=0;}}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),

    );
  }
}