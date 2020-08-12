import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:themed_application/app/interfaces/local_storage_interface.dart';
part 'change_theme.g.dart';

class ChangeTheme = _ChangeThemeBase with _$ChangeTheme;

abstract class _ChangeThemeBase with Store {
  final LocalStorageInterface storage;
  _ChangeThemeBase(this.storage) {
    loadTheme();
  }

  @observable
  ThemeData theme;
  @computed
  bool get isDark => theme.brightness == Brightness.dark;
  @action
  changeTheme() {
    theme = isDark ? ThemeData.light() : ThemeData.dark();
    storage.put('isDark', isDark);
  }

  Future<void> loadTheme() async {
    await storage.get('isDark').then((value) {
      value != null && value
          ? theme = ThemeData.dark()
          : theme = ThemeData.light();
    });
  }
}
