export 'profile_card_widget.dart';

import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  final String profileName;
  final Color primaryGradientColor;
  final Color secondaryGradientColor;
  final Color textColor;
  final VoidCallback onTap;

  const ProfileCardWidget(
      {super.key,
      required this.profileName,
      required this.primaryGradientColor,
      required this.onTap,
      this.textColor = const Color(0xFF000000),
      this.secondaryGradientColor = const Color(0xFF000000)});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                primaryGradientColor,
                secondaryGradientColor,
              ]),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(profileName,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 24,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
