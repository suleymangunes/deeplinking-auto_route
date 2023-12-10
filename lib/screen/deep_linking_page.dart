import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeepLinkingPage extends StatelessWidget {
  const DeepLinkingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deep Linking Page"),
      ),
      body: const Center(
        child: Text("This is Deep Linking Page ."),
      ),
    );
  }
}
