import 'package:flutter/material.dart';
import 'package:kazuya/screens/character_creation_screen.dart';
import 'package:kazuya/screens/login_screen.dart';
import 'package:kazuya/screens/register_screen.dart';
import 'package:kazuya/models/character.dart';
import 'package:kazuya/screens/game_screen.dart';
// This is the main entry point of the Kazuya RPG application.;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? _currentScreen;
  Character? _character;

  @override
  void initState() {
    super.initState();
    _currentScreen = LoginScreen(
      onLoginSuccess: _onLoginSuccess,
      onRegisterPressed: _onRegisterPressed,
    );
  }

  void _onLoginSuccess() {
    setState(() {
      _currentScreen = CharacterCreationScreen(
        onCreateCharacter: _onCreateCharacter,
      );
    });
  }

  void _onRegisterPressed() {
    setState(() {
      _currentScreen = RegisterScreen(
        onRegisterSuccess: _onRegisterSuccess,
        onBackToLoginPressed: _onBackToLoginPressed,
      );
    });
  }

  void _onRegisterSuccess() {
    setState(() {
      _currentScreen = CharacterCreationScreen(
        onCreateCharacter: _onCreateCharacter,
      );
    });
  }

  void _onBackToLoginPressed() {
    setState(() {
      _currentScreen = LoginScreen(
        onLoginSuccess: _onLoginSuccess,
        onRegisterPressed: _onRegisterPressed,
      );
    });
  }

  void _onCreateCharacter(Character character) {
    setState(() {
      _character = character;
      _currentScreen = GameScreen(character: _character!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kazuya RPG',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Playfair Display',
            color: Colors.white,
          ),
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: _currentScreen,
    );
  }
}
