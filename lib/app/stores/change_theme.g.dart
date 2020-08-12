// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_theme.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChangeTheme on _ChangeThemeBase, Store {
  Computed<bool> _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??=
          Computed<bool>(() => super.isDark, name: '_ChangeThemeBase.isDark'))
      .value;

  final _$themeAtom = Atom(name: '_ChangeThemeBase.theme');

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

  final _$_ChangeThemeBaseActionController =
      ActionController(name: '_ChangeThemeBase');

  @override
  dynamic changeTheme() {
    final _$actionInfo = _$_ChangeThemeBaseActionController.startAction(
        name: '_ChangeThemeBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_ChangeThemeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme},
isDark: ${isDark}
    ''';
  }
}
