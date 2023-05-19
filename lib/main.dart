import 'package:bookie/providers/task_provider.dart';
import 'package:bookie/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => TaskProvider()),
      ],
      child: MaterialApp(
        title: 'Bookie',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blue.shade700,
          fontFamily: 'Jost',
        ),
        home: const SplashScreen(),
        onGenerateRoute: (settings) {
          return null;
        },
        routes: const {},
      ),
    );
  }
}
