import 'package:app/src/common/constants/export.dart';
import 'package:app/src/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/HeaderTextWidget.dart';
import '../widgets/background_widget.dart';
import '../widgets/details_widget.dart';

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
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderTextWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DetailsRowItem(iconPath: AssetPaths.timerIcon, label: "22h 00m"),
                        SizedBox(width: 10),
                        DetailsRowItem(iconPath: AssetPaths.peopleIcon, label: "103"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
