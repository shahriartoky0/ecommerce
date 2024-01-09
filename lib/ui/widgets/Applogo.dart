import 'package:flutter/material.dart';

import '../utility/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.width, this.height});

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assetspath.$logo,
      width: width ?? 100,
      height: height ?? 100,
    );
  }
}
