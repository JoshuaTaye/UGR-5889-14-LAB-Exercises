import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: MyApp(),
    ),
  );
}

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Provider Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:' ),
            Text(context.watch<CounterModel>()._counter.toString()),
            Consumer<CounterModel>(
              builder: (context, counterModel, child) {
                return ElevatedButton.icon(
                  onPressed: () {
                    counterModel.increment();
                  },
                  icon: const Icon(Icons.add), // Plus icon
                  label: const Text('Add'), // Text label
                );
              },
            ),
            Consumer<CounterModel>(
              builder: (context, counterModel, child) {
                return ElevatedButton.icon(
                  onPressed: () {
                    counterModel.decrement();
                  },
                  icon: const Icon(Icons.minimize_outlined), // Plus icon
                  label: const Text('Subtract'), // Text label
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
