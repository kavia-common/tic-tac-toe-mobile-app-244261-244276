import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToeApp());
}

// PUBLIC_INTERFACE
class TicTacToeApp extends StatelessWidget {
  /// The root widget for the Tic Tac Toe app.
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Light pink color, use pink-50: #ffe4ec as a pleasant light pink
    const lightPinkBackground = Color(0xFFFFE4EC);
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          surface: lightPinkBackground,
          background: lightPinkBackground,
        ),
        scaffoldBackgroundColor: lightPinkBackground,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const MainGameScreen(),
    );
  }
}

// Placeholder widget for main game screen (since the real one is unknown)
class MainGameScreen extends StatelessWidget {
  const MainGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
      ),
      body: const Center(
        child: Text(
          'Tic Tac Toe Game Board Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
