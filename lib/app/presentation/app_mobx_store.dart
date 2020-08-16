import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:themed_application/app/domain/business_rule/change_theme.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';
part 'app_mobx_store.g.dart';

class AppMobxStore = _AppMobxStoreBase with _$AppMobxStore;

abstract class _AppMobxStoreBase with Store {
  final ChangeTheme changeThemeController;

  @observable
  ThemeData theme;

  @computed
  bool get isDarkTheme => theme.brightness == Brightness.dark;

  _AppMobxStoreBase(this.changeThemeController) {
    changeThemeController.getTheme().then((value) =>
        {value ? theme = darkTheme : theme = lightTheme});
  }

  @action
  changeTheme(bool value) {
    theme = value ?  darkTheme : lightTheme;
    changeThemeController.setTheme(isDarkTheme);
  }
}
