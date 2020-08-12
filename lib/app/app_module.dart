import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themed_application/app/interfaces/local_storage_interface.dart';
import 'package:themed_application/app/stores/change_theme.dart';
import 'app_widget.dart';
import 'local_storage/shared_preferences.dart';
import 'ui/home_page.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [
    Bind((i)=> ChangeTheme(i.get()),lazy: false),
    Bind<LocalStorageInterface>((i)=> SharedLocalStorageService(),lazy: false)
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/',
      child: (context, args) => HomePage(),
      transition: TransitionType.noTransition,
    ),
  ];

  static Inject get to => Inject<AppModule>.of();
}