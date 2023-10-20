import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/img.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";


  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }


void _navigateToMyimage() {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const MyImage(
      
    ),
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Calculatrice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _number,
              style: const TextStyle(fontSize: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('1'),
                      child: const Text('1'),
                    ),
                    TextButton(
                      onPressed: () => _updatenumber('4'),
                      child: const Text('4'),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('7'),
                      child: const Text('7'),
                      ),
                    ],
                    ),
                    Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('2'),
                      child: const Text('2'),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('5'),
                      child: const Text('5'),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('8'),
                      child: const Text('8'),
                      ),
                    ],
                    ),
                    Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('3'),
                      child: const Text('3'),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('6'),
                      child: const Text('6'),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('9'),
                      child: const Text('9'),
                      ),
                    ],
                    ),
                  ],
                  ),
                  TextButton(
                    onPressed: () => _updatenumber('0'),
                      child: const Text('0'),
                      ),
          ],
        ),
        
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: _navigateToMyimage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}