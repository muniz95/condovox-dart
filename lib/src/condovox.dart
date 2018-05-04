import 'dart:async';
import 'package:condovox/src/models/achado.dart';
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

Future<List<Achado>> achados(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/achados',
    headers: headers
  );
  return Achado.listaAchados(response.body);
}

Future<String> administradora(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/administradora',
    headers: headers
  );
  return response.body;
}

Future<String> amigos(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/amigos',
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

Future<String> brigadaIncendio(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/brigada_incendio',
    headers: headers
  );
  return response.body;
}

Future<String> sugestao(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/sugestao',
    headers: headers
  );
  return response.body;
}

Future<String> carona(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/carona',
    headers: headers
  );
  return response.body;
}

Future<String> classificados(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/classificados',
    headers: headers
  );
  return response.body;
}

Future<String> colaboradores(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/colaboradores',
    headers: headers
  );
  return response.body;
}

Future<String> conta(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/conta',
    headers: headers
  );
  return response.body;
}

Future<String> correspondencias(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/encomendas',
    headers: headers
  );
  return response.body;
}

Future<String> documentos(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/documentos',
    headers: headers
  );
  return response.body;
}

Future<String> empregados(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/empregados',
    headers: headers
  );
  return response.body;
}

Future<String> enquetes(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/enquetes',
    headers: headers
  );
  return response.body;
}

Future<String> eventos(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/eventos',
    headers: headers
  );
  return response.body;
}

Future<String> galeria(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/galeria',
    headers: headers
  );
  return response.body;
}

Future<String> listaAcesso(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/lista_acesso',
    headers: headers
  );
  return response.body;
}

Future<String> mensagens(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/mensagens',
    headers: headers
  );
  return response.body;
}

Future<String> notificacoes(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/notificacoes',
    headers: headers
  );
  return response.body;
}

Future<String> obras(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/obras',
    headers: headers
  );
  return response.body;
}

Future<String> ocorrencias(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/ocorrencias',
    headers: headers
  );
  return response.body;
}

Future<String> avisos(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/avisos',
    headers: headers
  );
  return response.body;
}

Future<String> pets(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/pets',
    headers: headers
  );
  return response.body;
}

Future<String> reservas(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/reservas',
    headers: headers
  );
  return response.body;
}

Future<String> unidade(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/unidade',
    headers: headers
  );
  return response.body;
}

Future<String> visita_prestadores(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/visita_prestadores',
    headers: headers
  );
  return response.body;
}

Future<String> veiculo(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/veiculo',
    headers: headers
  );
  return response.body;
}

Future<String> vizinhos(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/vizinhos',
    headers: headers
  );
  return response.body;
}

Future<String> votacao(Cookie cookie) async {
  Map<String, String> headers = {'cookie': cookie};
  http.Response response = await http.get(
    'https://www.spaziochampville.com.br/votacao',
    headers: headers
  );
  return response.body;
}