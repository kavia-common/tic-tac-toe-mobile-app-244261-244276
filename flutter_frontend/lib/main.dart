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
    // Light blue color, use sky-100: #e0f2fe as a pleasant light blue
    const lightBlueBackground = Color(0xFFe0f2fe);
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surface: lightBlueBackground,
          background: lightBlueBackground,
        ),
        scaffoldBackgroundColor: lightBlueBackground,
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
