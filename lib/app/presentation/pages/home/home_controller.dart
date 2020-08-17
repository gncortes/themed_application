import 'package:url_launcher/url_launcher.dart';
import '../../app_mobx_store.dart';
import 'strings.dart';

class HomeController {
  final AppMobxStore appController;
  HomeController(this.appController);

  void changeThemeWithSwitch(bool value) {
    appController.changeTheme(value);
  }

  bool get isDarkTheme {
    return appController.isDarkTheme;
  }

  String get themeText {
    return appController.isDarkTheme
        ? darkThemeToString.toUpperCase()
        : lightThemeToString.toUpperCase();
  }

  void openUrlGitHub() async {
    launch(urlGithub);
  }

  void openUrlLinkedin() async {
    launch(urlLinkedin);
  }
}
