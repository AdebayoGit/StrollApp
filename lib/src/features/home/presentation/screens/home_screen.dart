import 'package:app/src/common/adapters/export.dart';
import 'package:app/src/common/constants/export.dart';
import 'package:app/src/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/HeaderTextWidget.dart';
import '../widgets/background_widget.dart';
import '../widgets/details_widget.dart';
import '../widgets/options_card_widget.dart';
import '../widgets/user_profile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: BackgroundWidget(),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
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
                Column(
                  children: [
                    const UserProfileWidget(),
                    const SizedBox(height: 8),
                    Text(
                      "“Mine is definitely the peace in the morning.”",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor.withOpacity(.7),
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                    const SizedBox(height: 16),
                    const Wrap(
                      runSpacing: 16,
                      spacing: 12,
                      children: [
                        CustomCard(
                          textIcon: "A",
                          text: "The peace in the early mornings",
                        ),
                        CustomCard(
                          textIcon: "B",
                          text: "The magical golden hours",
                        ),
                        CustomCard(
                          textIcon: "C",
                          text: "Wind-down time after dinners",
                        ),
                        CustomCard(
                          textIcon: "D",
                          text: "The serenity past midnight",
                          selected: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text(
                          "Pick your option. "
                              "\nSee who has a similar mind.",
                          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        IconButton.outlined(
                            color: Colors.green,
                            style: IconButton.styleFrom(
                                fixedSize: const Size(48, 48),
                                side: BorderSide(color: Theme.of(context).primaryColor, width: 2)),
                            onPressed: () {},
                            icon: SvgPictureAdapter.asset(AssetPaths.micIcon)),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                                fixedSize: const Size(48, 48)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              fill: 1,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            )),
                      ],
                    ),
                    const SizedBox(height: 8),
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
