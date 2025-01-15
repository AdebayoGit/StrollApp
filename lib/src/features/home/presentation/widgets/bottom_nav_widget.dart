import 'package:app/src/common/adapters/export.dart';
import 'package:app/src/common/constants/export.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: SvgPictureAdapter.asset(AssetPaths.cardIcon),
        ),
        BottomNavigationBarItem(
            icon: Badge(
                padding: EdgeInsets.zero,
                label: const Text(""),
                offset: const Offset(10, -5),
                child: SvgPictureAdapter.asset(AssetPaths.flameIcon)
            ),
        ),
        BottomNavigationBarItem(
            icon: Badge(
                label: const Text("10"),
                child: SvgPictureAdapter.asset(AssetPaths.chatIcon)),
        ),
        BottomNavigationBarItem(
            icon: SvgPictureAdapter.asset(AssetPaths.profileIcon),
        ),
      ],
    );
  }
}
