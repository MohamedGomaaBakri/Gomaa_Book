import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gomaabook/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 26,
          ),
          const Spacer(),
          const Icon(FontAwesomeIcons.magnifyingGlass),
        ],
      ),
    );
  }
}
