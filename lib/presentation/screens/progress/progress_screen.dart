import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children:[
          SizedBox(height: 30),
          Text('Circular progess indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor: Colors.black45),

          SizedBox(height: 20),
          Text('Circular Linear y Controlado'),
          SizedBox(height: 10),
          _ControlledProgresIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(value: 0.5,strokeWidth: 2,backgroundColor: Colors.black12),
          const SizedBox(width: 20),
          Expanded(
            child: LinearProgressIndicator(value: 0.5),
          )
        ],
      ),
    );
  }
}