import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<Cookie> login(user, pass) async {
  http.Response response = await http.post(
    'https://www.spaziochampville.com.br/acesso/login',
    body: {"acesso_login": user, "acesso_senha": pass, "acesso_submit": ""}
  );
  return new Cookie.fromSetCookieValue(response.headers['set-cookie']);
}

Future<String> assembleias(user, pass) async {
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/assembleias'
  );
  return response.headers['set-cookie'];
}