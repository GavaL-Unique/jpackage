import 'package:flutter/material.dart';

void main() {
  runApp(const JLoading());
}

class JLoading extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? strokeWidth;

  const JLoading({
    super.key,
    this.color,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size ?? 20,
        width: size ?? 20,
        child: CircularProgressIndicator(
          color: color ?? Colors.red,
          strokeWidth: strokeWidth ?? 2.0,
        ),
      ),
    );
  }
}

// Example usage
class JLoadingExample extends StatelessWidget {
  const JLoadingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: JLoading(
          color: Colors.blue,
          size: 30,
          strokeWidth: 3.0,
        ),
      ),
    );
  }
}
