import 'package:test/test.dart';
import 'package:condovox/condovox.dart' as Condovox;

void main() {
  group("Lib Condovox", () {
    test("deve lançar exceção caso não seja informado o usuário", () {
      expect(Condovox.login('', 'password123'), throwsException);
    });
    test("deve lançar exceção caso não seja informada a senha", () {
      expect(Condovox.login('user', ''), throwsException);
    });
  });
}