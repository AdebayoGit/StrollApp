import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCard(
              textIcon: "A",
              text: "The peace in the early mornings",
            ),
            CustomCard(
              textIcon: "B",
              text: "The magical golden hours",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCard(
              textIcon: "C",
              text: "Wind-down time after dinners",
            ),
            CustomCard(
              textIcon: "D",
              text: "The serenity past midnight",
              isLast: true,
            ),
          ],
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
        required this.textIcon,
        required this.text,
        this.isLast = false});

  final String textIcon;
  final String text;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 8),

      width: 180,
      height: 60,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        border:
        Border.all(color: isLast ? cardBorderColor : cardColor, width: 2),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isLast ? cardBorderColor : null,
              border: Border.all(
                  color:
                  isLast ? cardBorderColor : CupertinoColors.inactiveGray,
                  width: 2),
            ),
            child: Center(
              child: Text(
                textIcon,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                text,
                overflow: TextOverflow.visible,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      children: [
        Positioned(
          left: 60,
          top: 15,
          child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.6),
            padding: const EdgeInsets.only(left: 30, right: 15),
            decoration: BoxDecoration(
                color: imageBorderColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Angelina, 28",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            alignment: Alignment.centerLeft,
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: imageBorderColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(0, 14))
                ],
                shape: BoxShape.circle),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Assets.assetsProfileImage),
            ),
          ),
        ),
      ],
    );
  }
}
