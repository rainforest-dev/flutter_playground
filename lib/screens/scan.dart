import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Column(
        children: [
          const Text('This is the Scan Screen'),
          ElevatedButton(
              onPressed: () => context.pop(), child: const Text('Start Scan'))
        ],
      )),
    );
  }
}
