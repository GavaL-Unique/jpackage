import 'package:flutter/material.dart';
import 'package:jloading/route.dart';

void main() {
  runApp(const JPackages());
}

class JPackages extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? strokeWidth;
  static final navigatorKey = GlobalKey<NavigatorState>();

  const JPackages({
    super.key,
    this.color,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: SKRoutes.initialRouter,
      onUnknownRoute: SKRoutes.unknownRoute,
      onGenerateRoute: SKRoutes.generateRouter,
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
        body: Column(
          children: [
            JLoading(
              color: Colors.blue,
              size: 30,
              strokeWidth: 3.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}

class JLoading extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? strokeWidth;
  static final navigatorKey = GlobalKey<NavigatorState>();

  const JLoading({
    super.key,
    this.color,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: size ?? 20,
          width: size ?? 20,
          child: CircularProgressIndicator(
            color: color ?? Colors.red,
            strokeWidth: strokeWidth ?? 2.0,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SKPages.pageTwo);
          },
          child: Text("Next Page..."),
        )
      ],
    ));
  }
}

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
