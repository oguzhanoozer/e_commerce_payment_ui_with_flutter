import 'color/color_manager.dart';
import 'text/text_manager.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}
