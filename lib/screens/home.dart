import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bookshelf'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            'Welcome to Bookshelf!',
          ),
          ElevatedButton(
              onPressed: () => context.pushNamed('scan'),
              child: const Text("Scan"))
        ],
      )),
    );
  }
}
