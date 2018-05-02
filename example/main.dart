import 'dart:io';
import 'package:condovox/condovox.dart';

main() async {
  Cookie cookie = await login('usuario', 'senha');
  print(cookie);
}