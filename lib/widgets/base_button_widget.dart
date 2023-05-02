export 'base_button_widget.dart';

import 'package:flutter/material.dart';

import '../utils/base.dart';

class BaseButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const BaseButtonWidget(
      {super.key, required this.title, required this.onPressed});

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
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  side: BorderSide(color: getColorFromHexa('ffa053')),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: onPressed,
              child: Text(
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
