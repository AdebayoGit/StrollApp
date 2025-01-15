import 'package:app/src/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: BackgroundWidget(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
