import 'dart:convert';
import 'package:dev_jobs/src/model/Vaga.dart';
import 'package:http/http.dart' as http;

class VagaService {
  Future<List<Vaga>> getVagas() async {
    List<Vaga> vagas = new List<Vaga>();

    try {
      final resposta = await http.get("https://jobs.github.com/positions.json");

      List<dynamic> lista = json.decode(resposta.body);
      lista.forEach((e) {
        vagas.add(Vaga.fromJson(e));
      });
    } catch (erro) {
      throw Exception("ERRO: Não foi possível retornar os dados.");
    }
    print(vagas);
    return vagas;
  }
}
