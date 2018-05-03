import 'package:condovox/models/usuario.dart';

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
}