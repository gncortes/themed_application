import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themed_application/app/stores/change_theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change theme"),
        actions: <Widget>[
          Observer(builder: (_) {
            return Switch(
              onChanged: (bool value) {
                controller.changeTheme();
              },
              value: controller.isDark,
            );
          }),
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
