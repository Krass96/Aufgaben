import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Teil 1: API-Aufgaben
  await aufgabe1();
  await aufgabe2();
  await aufgabe3();
  await aufgabe4();
  await aufgabe5();
  await aufgabe6();
  await aufgabe7();
  await aufgabe8();
  await aufgabe9();
  await aufgabe10();
  await aufgabe11();
  await aufgabe12();
  await aufgabe13();
  await aufgabe14();
  await aufgabe15();
  await aufgabe16();
  await aufgabe17();
  await aufgabe18();
  await aufgabe19();
  await aufgabe20();

  // Teil 2: JSON-String
  aufgabeJson();
}

// Hilfsfunktion für API-Aufrufe
Future<dynamic> fetchData(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

Future<void> aufgabe1() async {
  print('Aufgabe 1:');
  final users = await fetchData('https://jsonplaceholder.typicode.com/users');
  for (var user in users) {
    print(user['name']);
  }
}

Future<void> aufgabe2() async {
  print('\nAufgabe 2:');
  final user = await fetchData('https://jsonplaceholder.typicode.com/users/1');
  print(user['email']);
}

Future<void> aufgabe3() async {
  print('\nAufgabe 3:');
  final posts = await fetchData('https://jsonplaceholder.typicode.com/posts');
  for (var post in posts) {
    print(post['title']);
  }
}

Future<void> aufgabe4() async {
  print('\nAufgabe 4:');
  final posts =
      await fetchData('https://jsonplaceholder.typicode.com/posts?userId=1');
  for (var post in posts) {
    print(post['id']);
  }
}

Future<void> aufgabe5() async {
  print('\nAufgabe 5:');
  final post = await fetchData('https://jsonplaceholder.typicode.com/posts/5');
  print(post['body']);
}

Future<void> aufgabe6() async {
  print('\nAufgabe 6:');
  final comments =
      await fetchData('https://jsonplaceholder.typicode.com/comments?postId=1');
  print('Anzahl der Kommentare: ${comments.length}');
}

Future<void> aufgabe7() async {
  print('\nAufgabe 7:');
  final todos = await fetchData('https://jsonplaceholder.typicode.com/todos');
  for (var todo in todos) {
    print(todo['title']);
  }
}

Future<void> aufgabe8() async {
  print('\nAufgabe 8:');
  final todos = await fetchData(
      'https://jsonplaceholder.typicode.com/todos?completed=true');
  for (var todo in todos) {
    print(todo['title']);
  }
}

Future<void> aufgabe9() async {
  print('\nAufgabe 9:');
  final user = await fetchData('https://jsonplaceholder.typicode.com/users/1');
  print(user['address']['city']);
}

Future<void> aufgabe10() async {
  print('\nAufgabe 10:');
  final albums = await fetchData('https://jsonplaceholder.typicode.com/albums');
  for (var i = 0; i < 5 && i < albums.length; i++) {
    print(albums[i]['title']);
  }
}

Future<void> aufgabe11() async {
  print('\nAufgabe 11:');
  final photos = await fetchData('https://jsonplaceholder.typicode.com/photos');
  for (var i = 0; i < 3 && i < photos.length; i++) {
    print(photos[i]['thumbnailUrl']);
  }
}

Future<void> aufgabe12() async {
  print('\nAufgabe 12:');
  final users = await fetchData('https://jsonplaceholder.typicode.com/users');
  for (var user in users) {
    print('${user['name']} - ${user['company']['name']}');
  }
}

Future<void> aufgabe13() async {
  print('\nAufgabe 13:');
  final comment =
      await fetchData('https://jsonplaceholder.typicode.com/comments/3');
  print(comment['email']);
}

Future<void> aufgabe14() async {
  print('\nAufgabe 14:');
  final todos =
      await fetchData('https://jsonplaceholder.typicode.com/todos?_limit=10');
  for (var todo in todos) {
    print(
        'Todo ${todo['id']}: ${todo['completed'] ? "Abgeschlossen" : "Offen"}');
  }
}

Future<void> aufgabe15() async {
  print('\nAufgabe 15:');
  final posts = await fetchData('https://jsonplaceholder.typicode.com/posts');
  final count = posts.where((post) => post['userId'] == 2).length;
  print('Anzahl der Posts von userId 2: $count');
}

Future<void> aufgabe16() async {
  print('\nAufgabe 16:');
  final user = await fetchData('https://jsonplaceholder.typicode.com/users/2');
  final geo = user['address']['geo'];
  print('Lat: ${geo['lat']}, Lng: ${geo['lng']}');
}

Future<void> aufgabe17() async {
  print('\nAufgabe 17:');
  final album =
      await fetchData('https://jsonplaceholder.typicode.com/albums/1');
  print('UserID: ${album['userId']}, Titel: ${album['title']}');
}

Future<void> aufgabe18() async {
  print('\nAufgabe 18:');
  final comment =
      await fetchData('https://jsonplaceholder.typicode.com/comments/10');
  print('Name: ${comment['name']}\nBody: ${comment['body']}');
}

Future<void> aufgabe19() async {
  print('\nAufgabe 19:');
  final photos =
      await fetchData('https://jsonplaceholder.typicode.com/photos?albumId=1');
  print('Anzahl der Fotos: ${photos.length}');
}

Future<void> aufgabe20() async {
  print('\nAufgabe 20:');
  final todo = await fetchData('https://jsonplaceholder.typicode.com/todos/2');
  print(
      'Titel: ${todo['title']}, Status: ${todo['completed'] ? "Abgeschlossen" : "Offen"}');
}

void aufgabeJson() {
  print('\nJSON-String Aufgabe:');
  final jsonString = '{"product": {"title": "Schreibtisch", "price": 120.5}}';
  final jsonData = json.decode(jsonString);
  print('Preis: ${jsonData['product']['price']}');
}
