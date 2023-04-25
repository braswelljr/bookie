import 'package:flutter/material.dart';
import 'package:bookie/screens/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.blue[300],
          elevation: 10,
          selectedItemColor: Colors.amberAccent[500],
          selectedIconTheme: IconThemeData(
            size: 20,
            color: Colors.greenAccent[400],
          ),
        ),
      ),
      home: const Home(title: 'Task'),
      onGenerateRoute: null,
    );
  }
}
