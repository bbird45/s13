import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/app.dart';

class BannerService {
  List<dynamic> banners = [];
  Future<List> fetchBanners() async {
    try {
      final response = await http.get(Uri.parse('$API_URL/api/banners'));
      final banners = jsonDecode(response.body);
      print(banners);
      return banners;
    } catch (error) {
      print(error);
      return [];
    }
  }
}
