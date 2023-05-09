import 'package:bookie/providers/task_provider.dart';
import 'package:bookie/screens/home_page.dart';
import 'package:bookie/screens/splash_screen.dart';
import 'package:bookie/screens/authentication/login_page.dart';
import 'package:bookie/screens/authentication/signup_page.dart';
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
          colorSchemeSeed: Colors.blue,
          fontFamily: 'Montserrat',
        ),
        home: const SplashScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (context) => const Home());
            case '/login':
              return MaterialPageRoute(builder: (context) => const Login());
            case '/signup':
              return MaterialPageRoute(builder: (context) => const Signup());

            default:
              return MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              );
          }
        },
        routes: {
          '/home': (context) => const Home(),
          '/login': (context) => const Login(),
          '/signup': (context) => const Signup(),
        },
      ),
    );
  }
}
