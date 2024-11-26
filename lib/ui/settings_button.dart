import 'package:flutter/material.dart';

import 'settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Настройки'),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const SettingsPage()));
        },
      ),
    );
  }
}
