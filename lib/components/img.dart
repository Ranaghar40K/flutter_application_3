import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/calculatrice.dart';

class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> with SingleTickerProviderStateMixin {
  double _opacity = 0.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("L'image qui sert à rien"),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: _opacity,
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
            child: const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToCalculatrice(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _navigateToCalculatrice(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Calculatrice(
      title: 'Adrien Calculatrice Page',
      description: 'Enter numbers:',
    ),
  ));
}

void main() => runApp(const MaterialApp(
  home: MyImage(),
));
