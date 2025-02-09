import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  Barcode? _barcode;

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text('Scan something!', overflow: TextOverflow.fade);
    }
    return Text(value.displayValue ?? 'Unknown barcode',
        overflow: TextOverflow.fade);
  }

  void _handleBarcode(BarcodeCapture capture) {
    if (mounted) {
      setState(() {
        _barcode = capture.barcodes.firstOrNull;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scan Screen'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Stack(children: [
          MobileScanner(
            onDetect: _handleBarcode,
          ),
          Center(
              child: Column(
            children: [
              _buildBarcode(_barcode),
              ElevatedButton(
                  onPressed: () => context.pop(),
                  child: const Text('Start Scan'))
            ],
          )),
        ]));
  }
}
