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

Future<String> home(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/',
    headers: headers
  );
  return response.body;
}

Future<String> assembleias(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/assembleias',
    headers: headers
  );
  return response.body;
}