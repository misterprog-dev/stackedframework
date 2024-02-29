import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:my_first_app/domain/artist.dart';


class ApiService {
  Future<List<Artist>> getArtists() async {
    final response = await http.get(Uri.https('venu.is', '/artists'));
    if (response.statusCode < 400) {
      final responseBodyAsMap = jsonDecode(response.body);
      final artistMaps =
          responseBodyAsMap['data'] as List<Map<String, dynamic>>;
      return artistMaps.map(Artist.fromJson).toList();
    }

    throw Exception('Response Code: ${response.statusCode} - ${response.body}');
  }
}
