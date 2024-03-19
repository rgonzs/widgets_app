import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// un simple bool
// final isDarkmodeProvider = StateProvider((ref) => false);

// Listado de colores inmutables

final colorListProvider = Provider((ref) => colorList);

// un simple int
// final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// COntroller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
