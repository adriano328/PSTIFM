import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class API {
  static Future getDadosCep(String cep) async {
    const baseUrl = 'https://viacep.com.br/ws';

    var url = baseUrl + '/$cep/json';

    return await http.get(Uri.parse(url));
  }
}
