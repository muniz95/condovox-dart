import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

Document parseStringToHTML(String html) {
  return parse(html);
}