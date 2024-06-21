import 'dart:convert';

import 'package:fifa/common/Constants.dart';
import '../models/Spid.dart';
import 'package:http/http.dart' as http;

class MetadataRepository {

  Future<List<Spid>> getSpid() async {
    final response = await http.get(Uri.parse('${Constants.BASEURL}/meta/spid.json'),
        headers: {'x-nxopen-api-key': Constants.APIKEY});

    if (response.statusCode == 200) {
      // 한글 깨짐 현상 방지
      List<dynamic> jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      return jsonResponse.map((data) => Spid.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Spid');
    }
  }
}
