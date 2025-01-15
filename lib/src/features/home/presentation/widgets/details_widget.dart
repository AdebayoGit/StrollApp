import 'package:app/src/common/adapters/export.dart';
import 'package:flutter/material.dart';

class DetailsRowItem extends StatelessWidget {
  const DetailsRowItem({
    Key? key,
    required this.iconPath,
    required this.label,
  }) : super(key: key);

  final String iconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodyLarge?.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPictureAdapter.asset(
          iconPath,
          color: Colors.white,
          height: 13,
          width: 10,
        ),
        const SizedBox(width: 7),
        Text(label, style: textStyle),
      ],
    );
  }
}
