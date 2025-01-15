import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.textIcon,
    required this.text,
    this.selected = false,
  });

  final String textIcon;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardBackgroundColor = theme.cardColor;
    final borderColor = selected ? theme.colorScheme.primary : cardBackgroundColor;
    final textStyle = theme.textTheme.bodySmall?.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
    final iconTextStyle = theme.textTheme.bodyMedium?.copyWith(
      color: Colors.white,
      fontSize: 15,
    );

    return Container(
      width: 180,
      height: 60,
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected ? borderColor : null,
              border: Border.all(
                color: selected ? borderColor : theme.dividerColor,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                textIcon,
                style: iconTextStyle,
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
                style: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

