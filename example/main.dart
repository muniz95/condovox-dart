import 'dart:io';
import 'package:condovox/condovox.dart';
import 'package:dotenv/dotenv.dart' show load, env;

main() async {
  load();
  Cookie cookie = await login(env['user'], env['pass']);
  List<Achado> lstAchados = await achados(cookie);
  lstAchados.forEach((Achado achado) => print('${achado.titulo} - ${achado.data.day}'));
}