```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['someKey']);
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('Error: HTTP request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```