import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is home page."),
            ElevatedButton(
                onPressed: () {
                  context.router.pushNamed("/DeepLinkRoute/123");
                },
                child: const Text("Go Deep Link Page")),
          ],
        ),
      ),
    );
  }
}
