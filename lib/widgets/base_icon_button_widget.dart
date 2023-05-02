export 'base_icon_button_widget.dart';

import 'package:flutter/material.dart';

import '../utils/base.dart';

class BaseIconButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData icon;

  const BaseIconButtonWidget(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    getColorFromHexa('ff9c51'),
                    getColorFromHexa('ff604a')
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  side: BorderSide(color: getColorFromHexa('ffa053')),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              icon: Icon(icon, color: getColorFromHexa('492423')),
              onPressed: onPressed,
              label: Text(
                title,
                style: TextStyle(
                    color: getColorFromHexa('492423'),
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
