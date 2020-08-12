import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../app_mobx_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<AppMobxStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change theme"),
        actions: <Widget>[
          Observer(builder: (_) {
            return Switch(
              onChanged:
                controller.changeTheme,
              value: controller.isDarkTheme,
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
