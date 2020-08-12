import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:themed_application/app/domain/business_rule/change_theme.dart';
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
        {value ? theme = ThemeData.dark() : theme = ThemeData.light()});
  }

  @action
  changeTheme(bool value) {
    theme = value ? ThemeData.dark() : ThemeData.light();
    changeThemeController.setTheme(isDarkTheme);
  }
}
