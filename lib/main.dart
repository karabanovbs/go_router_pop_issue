import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Root'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).goNamed('page_a');
                },
                child: const Text('go to page A'),
              ),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).goNamed('page_b');
                },
                child: const Text('go to page B'),
              ),
            ],
          ),
        ),
      ),
      routes: [
        GoRoute(
          path: 'page_a',
          name: 'page_a',
          builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: const Text('Page A'),
            ),
          ),
        ),
        GoRoute(
          path: 'page_b',
          name: 'page_b',
          builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: const Text('Page B'),
            ),
          ),
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
