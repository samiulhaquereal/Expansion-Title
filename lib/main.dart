import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text('Expantion Title'),
            trailing:Icon(_customIcon ? Icons.arrow_drop_down_circle_outlined : Icons.arrow_drop_down),
            children: [
              ListTile(
                title: Text('This is tile Number 2 '),
              )
            ],
            onExpansionChanged: (bool expanded){
              setState(() {
                _customIcon = expanded;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          )
        ],
      ),));
  }
}

