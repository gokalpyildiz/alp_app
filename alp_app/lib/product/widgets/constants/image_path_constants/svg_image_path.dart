import '../../../../extensions/string_extension.dart';

class SVGImagePath {
  SVGImagePath._init();
  static final SVGImagePath _instance = SVGImagePath._init();
  static SVGImagePath get instance => _instance;

  final imageNotFoundSVG = 'imageNotFound'.toSVG;
}
