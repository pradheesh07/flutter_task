import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl =
      'https://frontend.webdotstechnologies.com/jwdapi/test/dummy';

  Future<bool> submitFormData(String name, String email, String phone,
      String remark, String state) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'name': name,
          'email': email,
          'phone': phone,
          'remark': remark,
          'state': state,
        },
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return response.statusCode == 200;
    } catch (e) {
      print('Error occurred: $e');
      return false;
    }
  }
}



