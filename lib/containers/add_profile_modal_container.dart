export 'add_profile_modal_container.dart';

import 'package:flutter/material.dart';

import '../utils/base.dart';

import '../widgets/base_button_widget.dart';

class AddProfileModal extends StatelessWidget {
  final Function(String) onSubmit;

  AddProfileModal({super.key, required this.onSubmit});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: getColorFromHexa('28343c')),
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa un nombre',
                  ),
                ),
                const SizedBox(height: 20),
                Row(children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {
                      final String name = _textEditingController.text;
                      if (name.isNotEmpty) {
                        onSubmit(name);
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('Cancel',
                        style: TextStyle(
                            color: getColorFromHexa('492423'),
                            fontFamily: 'Nunito',
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  )),
                  const SizedBox(width: 12),
                  Expanded(
                      child: BaseButtonWidget(
                    title: 'Confirm',
                    onPressed: () {
                      final String name = _textEditingController.text;
                      if (name.isNotEmpty) {
                        onSubmit(name);
                        Navigator.of(context).pop();
                      }
                    },
                  ))
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
