import 'dart:io';
import 'package:condovox/condovox.dart';
import 'package:dotenv/dotenv.dart' show load, env;

main() async {
  load();
  Cookie cookie = await login(env['user'], env['pass']);
  List<Assembleia> items = await assembleias(cookie);
  items.forEach((Assembleia item) => print('${item.titulo} - ${item.data.day}'));
}