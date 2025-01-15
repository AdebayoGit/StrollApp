import 'package:app/src/common/adapters/export.dart';
import 'package:app/src/common/constants/export.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: BottomNavigationBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color(0xFF0F1115),
        items: [
          BottomNavigationBarItem(
            icon: SvgPictureAdapter.asset(AssetPaths.cardIcon),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Badge(
                padding: EdgeInsets.zero,
                label: const Text(""),
                offset: const Offset(10, -5),
                child: SvgPictureAdapter.asset(AssetPaths.flameIcon)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Badge(
                label: const Text(
                  "10",
                  style: TextStyle(
                    color: Color(0xFF0F1115),
                    fontSize: 7,
                  ),
                ),
                child: SvgPictureAdapter.asset(AssetPaths.chatIcon)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPictureAdapter.asset(AssetPaths.profileIcon),
            label: "",
          ),
        ],
      ),
    );
  }
}
