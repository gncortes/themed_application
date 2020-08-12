import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themed_application/app/domain/business_rule/change_theme.dart';
import 'presentation/app_mobx_store.dart';
import 'presentation/app_widget.dart';
import 'presentation/pages/home/home_page.dart';
import 'repositories/local_storage/local_storage_interface.dart';
import 'repositories/local_storage/shared_preferences.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [
    Bind((i) => AppMobxStore(i.get())),
    Bind<LocalStorageInterface>((i) => SharedLocalStorageService()),
    Bind((i) => ChangeTheme(i.get()),lazy: false),
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