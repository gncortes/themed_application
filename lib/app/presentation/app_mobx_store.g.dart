// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_mobx_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppMobxStore on _AppMobxStoreBase, Store {
  Computed<bool> _$isDarkThemeComputed;

  @override
  bool get isDarkTheme =>
      (_$isDarkThemeComputed ??= Computed<bool>(() => super.isDarkTheme,
              name: '_AppMobxStoreBase.isDarkTheme'))
          .value;

  final _$themeAtom = Atom(name: '_AppMobxStoreBase.theme');

  @override
  ThemeData get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(ThemeData value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$_AppMobxStoreBaseActionController =
      ActionController(name: '_AppMobxStoreBase');

  @override
  dynamic changeTheme(bool value) {
    final _$actionInfo = _$_AppMobxStoreBaseActionController.startAction(
        name: '_AppMobxStoreBase.changeTheme');
    try {
      return super.changeTheme(value);
    } finally {
      _$_AppMobxStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme},
isDarkTheme: ${isDarkTheme}
    ''';
  }
}
