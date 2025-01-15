import 'package:flutter/material.dart';

class CustomShadowColors extends ThemeExtension<CustomShadowColors> {
  final Color shadow1;
  final Color shadow2;
  final Color shadow3;

  const CustomShadowColors({
    required this.shadow1,
    required this.shadow2,
    required this.shadow3,
  });

  @override
  CustomShadowColors copyWith({
    Color? shadow1,
    Color? shadow2,
    Color? shadow3,
  }) {
    return CustomShadowColors(
      shadow1: shadow1 ?? this.shadow1,
      shadow2: shadow2 ?? this.shadow2,
      shadow3: shadow3 ?? this.shadow3,
    );
  }

  @override
  CustomShadowColors lerp(ThemeExtension<CustomShadowColors>? other, double t) {
    if (other is! CustomShadowColors) return this;
    return CustomShadowColors(
      shadow1: Color.lerp(shadow1, other.shadow1, t)!,
      shadow2: Color.lerp(shadow2, other.shadow2, t)!,
      shadow3: Color.lerp(shadow3, other.shadow3, t)!,
    );
  }
}