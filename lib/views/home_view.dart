import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/provider/game_board_provider.dart';
import 'package:flutter_tic_tac_toe/views/game_board_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text(
              "Play yourself",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.88,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "X";
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "Play as X",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "X";
                    context.read<GameBoardProvider>().twoPlayerGame = true;
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "2 Player Game",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "O";
                    context.read<GameBoardProvider>().aiTurn();
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "Play as O",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Let the AI play for you!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.88,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = null;
                    context.read<GameBoardProvider>().aiTurn();
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "AI Wars",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
