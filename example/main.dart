import 'dart:io';
import 'package:condovox/condovox.dart';

main() async {
  Cookie cookie = await login('user', 'pass');
  print(await votacao(cookie));
}