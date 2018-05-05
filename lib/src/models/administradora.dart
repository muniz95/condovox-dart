import 'package:condovox/src/util/html_parser.dart';
import 'package:html/dom.dart';

class Administradora {
  final int id;
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String site;

  Administradora({
    this.id,
    this.nome,
    this.endereco,
    this.telefone,
    this.email,
    this.site,
  });

  static List<Administradora> listaAdministradoras(String html) {
    Document document = parseStringToHTML(html);
    List<Element> rows = document.getElementsByTagName('tr');
    List<Administradora> administradoras = new List<Administradora>();
    rows.forEach((Element row) {
      administradoras.add(new Administradora.fromHTML(row));
    });
    
    return administradoras;
  }

  factory Administradora.fromHTML(Element row) {
    return new Administradora(
      nome: row.children[0].text.trim(),
      telefone: row.children[1].text.trim(),
    );
  }
}