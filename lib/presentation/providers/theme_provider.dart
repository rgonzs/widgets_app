import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);

// Listado de colores inmutables

final colorListProvider = Provider((ref) => colorList);

// un simple int
final selectedColorProvider = StateProvider((ref) => 0);
