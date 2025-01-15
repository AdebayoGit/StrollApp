import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictureAdapter {
  /// Load SVG from assets
  static Widget asset(String assetName, {double? width, double? height, BoxFit fit = BoxFit.contain, Color? color}) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color == null ? null : ColorFilter.mode(
          color,
          BlendMode.srcIn
      ),
    );
  }

  /// Load SVG from network
  static Widget network(String url, {double? width, double? height, BoxFit fit = BoxFit.contain, Color? color}) {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color == null ? null : ColorFilter.mode(
          color,
          BlendMode.srcIn
      ),
    );
  }

  /// Load SVG from memory
  static Widget memory(
      Uint8List bytes,
      {
        double? width,
        double? height,
        BoxFit fit = BoxFit.contain,
        Color? color
      }) {
    return SvgPicture.memory(
      bytes,
      width: width,
      height: height,
      fit: fit,
    );
  }
}