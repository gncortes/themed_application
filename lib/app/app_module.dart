import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';
import 'ui/home_page.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/',
      child: (context, args) => HomePage(),
      transition: TransitionType.noTransition,
    ),
  ];

}