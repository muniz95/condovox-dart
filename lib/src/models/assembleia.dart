import 'package:condovox/src/util/html_parser.dart';
import 'package:html/dom.dart';

class Assembleia {
  final int id;
  final String titulo;
  final DateTime data;
  final bool confirmou;
  final String local;
  final String pauta;
  
  Assembleia({
    this.id,
    this.titulo,
    this.data,
    this.confirmou,
    this.local,
    this.pauta,
  });

  static List<Assembleia> listaAssembleias(String html) {
    Document document = parseStringToHTML(html);
    List<Element> rows = document.querySelectorAll('tr.ativado');
    List<Assembleia> assembleias = new List<Assembleia>();
    rows.forEach((Element row) {
      assembleias.add(new Assembleia.fromHTML(row));
    });
    
    return assembleias;
  }

  factory Assembleia.fromHTML(Element row) {
    List<String> dataAssembleia = row.children[1].text.trim().split('/');
    int year = int.parse(dataAssembleia[2]);
    int month = int.parse(dataAssembleia[1]);
    int day = int.parse(dataAssembleia[0]);
    return new Assembleia(
      titulo: row.children[0].text.trim(),
      data: new DateTime(year, month, day),
      confirmou: row.children[2].text != ''
    );
  }
}