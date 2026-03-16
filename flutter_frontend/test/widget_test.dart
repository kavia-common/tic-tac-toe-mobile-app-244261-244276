import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('TicTacToeApp displays main game UI', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Should see title "Tic Tac Toe" and the score bar
    expect(find.text('Tic Tac Toe'), findsOneWidget);
    expect(find.text('X'), findsOneWidget);
    expect(find.text('O'), findsOneWidget);

    // Should see 'Restart' and 'New Game' buttons
    expect(find.text('Restart'), findsOneWidget);
    expect(find.text('New Game'), findsOneWidget);

    // There should be a 3x3 grid of tappable cells (initially empty)
    expect(find.text('X'), findsOneWidget); // score, not board yet

    // Tap a cell and expect X to appear on board
    final emptyCell = find.byType(BoardCell).first;
    await tester.tap(emptyCell);
    await tester.pump();
    // Now there should be 2 X's (score and board)
    expect(find.text('X'), findsNWidgets(2));
  });

  testWidgets('Score bar and player indicator shown', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    // Score bar: check for score labels and retro footer
    expect(find.text('X'), findsWidgets);
    expect(find.text('Draw'), findsOneWidget);
    expect(find.text('O'), findsWidgets);

    // Player indicator: look for Turn or win/draw status
    expect(find.textContaining('Turn: Player'), findsOneWidget);

    // Attribution/footer is present
    expect(find.textContaining('Retro Light Theme'), findsOneWidget);
  });
}
