
import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/calculatrice.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key, required this.title, required this.description});


  final String title;
  final String description;

  @override
  State<HomeComponent> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeComponent> {
  




  void _navigateToCalculatrice() {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Calculatrice(
      title: 'Adrien Calculatrice Page',
      description: 'Enter numbers:',
    ),
  ));
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.description,
            style: const TextStyle(color: Colors.red),
          ),
          
          
          
        ],
      )

      ),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: _navigateToCalculatrice,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ) 
    );
  }
}
