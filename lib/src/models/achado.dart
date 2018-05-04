import 'package:condovox/src/models/usuario.dart';
import 'package:condovox/src/util/html_parser.dart';
import 'package:html/dom.dart';

class Achado {
  final int id;
  final Usuario achadoPor;
  final DateTime data;
  final String foto;
  final String observacoes;
  final bool resolvido;
  final String titulo;

  Achado({
    this.id,
    this.achadoPor,
    this.data,
    this.foto,
    this.observacoes,
    this.resolvido,
    this.titulo,
  });

  static List<Achado> listaAchados(String html) {
    Document document = parseStringToHTML(html);
    List<Element> rows = document.getElementsByTagName('tr');
    List<Achado> achados = new List<Achado>();
    rows.forEach((Element row) {
      achados.add(new Achado.fromHTML(row));
    });
    
    return achados;
  }

  factory Achado.fromHTML(Element row) {
    List<String> dataAchado = row.children[2].text.trim().split('/');
    int year = int.parse(dataAchado[2]);
    int month = int.parse(dataAchado[1]);
    int day = int.parse(dataAchado[0]);
    return new Achado(
      titulo: row.children[0].text.trim(),
      achadoPor: new Usuario(nome: row.children[1].text.trim()),
      data: new DateTime(year, month, day),
      resolvido: row.children[3].text.trim() != ''
    );
  }
}