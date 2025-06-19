import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:kazuya/screens/character_creation_screen.dart';
import 'package:kazuya/screens/login_screen.dart';
import 'package:kazuya/screens/register_screen.dart';
import 'package:kazuya/models/character.dart';
import 'package:kazuya/screens/game_screen.dart';
// This is the main entry point of the Kazuya RPG application.

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
      builder: (context, child) {
        // Responsividade global: centraliza e limita largura em telas grandes
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Center(child: SizedBox(width: 500, child: child));
            }
            return child!;
          },
        );
      },
      home: _ResponsiveScreen(child: _currentScreen),
    );
  }
}

// Widget para garantir que textos grandes se ajustem automaticamente
class _ResponsiveScreen extends StatelessWidget {
  final Widget? child;
  const _ResponsiveScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child == null
            ? const SizedBox.shrink()
            : _AutoSizeTextWrapper(child: child!),
      ),
    );
  }
}

// Envolve todos os textos em AutoSizeText para evitar corte
class _AutoSizeTextWrapper extends StatelessWidget {
  final Widget child;
  const _AutoSizeTextWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return _replaceTextWithAutoSize(child);
      },
    );
  }

  Widget _replaceTextWithAutoSize(Widget widget) {
    if (widget is Text) {
      return AutoSizeText(
        widget.data ?? '',
        style: widget.style,
        maxLines: widget.maxLines ?? 2,
        minFontSize: 10,
        overflow: widget.overflow ?? TextOverflow.ellipsis,
        textAlign: widget.textAlign,
      );
    } else if (widget is Column) {
      final children = widget.children
          .map((child) => _replaceTextWithAutoSize(child))
          .toList();
      return Column(
        key: widget.key,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        children: children,
      );
    } else if (widget is Row) {
      final children = widget.children
          .map((child) => _replaceTextWithAutoSize(child))
          .toList();
      return Row(
        key: widget.key,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        children: children,
      );
    } else if (widget is Stack) {
      final children = widget.children
          .map((child) => _replaceTextWithAutoSize(child))
          .toList();
      return Stack(
        key: widget.key,
        alignment: widget.alignment,
        children: children,
      );
    } else if (widget is SingleChildRenderObjectWidget) {
      return widget is Padding && widget.child != null
          ? Padding(
              key: widget.key,
              padding: widget.padding,
              child: _replaceTextWithAutoSize(widget.child!),
            )
          : widget;
    }
    return widget;
  }
}
