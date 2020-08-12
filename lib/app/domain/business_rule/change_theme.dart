import 'package:themed_application/app/repositories/local_storage/local_storage_interface.dart';

class ChangeTheme {
  final LocalStorageInterface localRepository;
  ChangeTheme(this.localRepository);
  bool isDark;
  Future<bool> getTheme() async => await localRepository.get('isDarkTheme').then((value) {
    value == null ? isDark = false : isDark = value;
    return isDark;
  });

  setTheme(bool value) {
    isDark = value;
    localRepository.put('isDarkTheme', isDark);
  }
}
