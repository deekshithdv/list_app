import 'package:http/http.dart' as http;

abstract class TopDatasource {
  Future<http.Response> getSearchResults(String searchKey);
}

class TopDatasourceImpl implements TopDatasource {
  final String url = 'api.github.com';

  @override
  Future<http.Response> getSearchResults(String searchKey) {
    return http.get(Uri.https(url), headers: {});
  }
}
