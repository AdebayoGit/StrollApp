import 'package:app/src/common/config/config.dart';
import 'package:app/src/common/constants/export.dart';
import 'package:flutter/material.dart';

import '../../../../common/adapters/export.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customShadowColors = theme.extension<CustomShadowColors>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Stroll Bonfire",
          style: TextStyle(
            color: theme.textTheme.titleLarge?.color ?? Colors.white,
            fontSize: 34,
            shadows: [
              BoxShadow(
                color: customShadowColors!.shadow1,
                blurRadius: 7.9,
              ),
              BoxShadow(
                color: customShadowColors.shadow2,
                blurRadius: 2,
              ),
              BoxShadow(
                color: customShadowColors.shadow3,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPictureAdapter.asset(
            AssetPaths.arrowDownIcon,
            height: 10,
            width: 5,
          ),
        ),
      ],
    );
  }
}
