abstract class Baseapiservice {
  Future<dynamic> getapi(String url);

  Future<dynamic> postapi(dynamic data, String url);
}
