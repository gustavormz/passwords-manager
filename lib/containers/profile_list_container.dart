export 'profile_list_container.dart';

import 'package:flutter/material.dart';

import '../models/profile_model.dart';

import '../widgets/profile_card_widget.dart';

import '../utils/base.dart';

class ProfileListContainer extends StatelessWidget {
  final List<Profile> profiles;
  final VoidCallback onCardTap;

  const ProfileListContainer({
    super.key,
    required this.profiles,
    required this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: profiles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          bool isEven = ((1 + index) ~/ 2) % 2 == 0;
          Color primaryGradientColor =
              isEven ? getColorFromHexa('ff6b53') : getColorFromHexa('f4f5f7');
          Color secondaryGradientColor =
              isEven ? getColorFromHexa('fda05d') : getColorFromHexa('f4f5f7');
          Color textColor =
              isEven ? getColorFromHexa('ffcfb8') : getColorFromHexa('4d575c');
          return ProfileCardWidget(
            profileName: profiles[index].name,
            primaryGradientColor: primaryGradientColor,
            secondaryGradientColor: secondaryGradientColor,
            textColor: textColor,
            onTap: onCardTap,
          );
        });
  }
}
