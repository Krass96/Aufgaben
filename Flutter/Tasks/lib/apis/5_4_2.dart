import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AufgabeAPI());
}

class AufgabeAPI extends StatefulWidget {
  const AufgabeAPI({super.key});

  @override
  State<AufgabeAPI> createState() => _AufgabeAPIState();
}

class _AufgabeAPIState extends State<AufgabeAPI> {
  final jokeController = TextEditingController();
  final dateController = TextEditingController();
  final urlController = TextEditingController();

  List<Map<String, dynamic>> jokeList = [
    {
      "categories": [],
      "created_at": "2020-01-05 13:42:24.40636",
      "icon_url": "https://api.chucknorris.io/img/avatar/chuck-norris.png",
      "id": "DfNJKCAWTV6ARaxCxhkwhg",
      "updated_at": "2020-01-05 13:42:24.40636",
      "url": "https://api.chucknorris.io/jokes/DfNJKCAWTV6ARaxCxhkwhg",
      "value":
          "Chuck Norris can win a gunfight without firing a shot. And without a gun."
    },
    {
      "categories": [],
      "created_at": "2020-01-05 13:42:26.194739",
      "icon_url": "https://api.chucknorris.io/img/avatar/chuck-norris.png",
      "id": "HKTxq1ZwScGqlBAnnPzMMQ",
      "updated_at": "2020-01-05 13:42:26.194739",
      "url": "https://api.chucknorris.io/jokes/HKTxq1ZwScGqlBAnnPzMMQ",
      "value":
          "Chuck Norris once put a man in an eight-month coma just by hurting his feelings."
    },
    {
      "categories": [],
      "created_at": "2020-01-05 13:42:30.730109",
      "icon_url": "https://api.chucknorris.io/img/avatar/chuck-norris.png",
      "id": "2MvOyHpeRIq_-cyRSCLf_A",
      "updated_at": "2020-01-05 13:42:30.730109",
      "url": "https://api.chucknorris.io/jokes/2MvOyHpeRIq_-cyRSCLf_A",
      "value":
          "When Chuck Norris makes a play on words, it becomes a broadway hit."
    },
    {
      "categories": [],
      "created_at": "2020-01-05 13:42:22.701402",
      "icon_url": "https://api.chucknorris.io/img/avatar/chuck-norris.png",
      "id": "HufBuaK0QauX8u8qg-HEhA",
      "updated_at": "2020-01-05 13:42:22.701402",
      "url": "https://api.chucknorris.io/jokes/HufBuaK0QauX8u8qg-HEhA",
      "value":
          "Chuck Norris was aboard the Costa Concordia. When it sank, Chuck Norris inflated his beard and swam away with 427 grateful passengers."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text('Chuck Norris Jokes'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: jokeController,
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: 'Joke', border: OutlineInputBorder()),
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                      hintText: 'Create Date', border: OutlineInputBorder()),
                ),
                TextField(
                  controller: urlController,
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: 'Url', border: OutlineInputBorder()),
                ),
                ElevatedButton(
                    onPressed: () {
                      final random = Random();
                      final randomIndex = random.nextInt(jokeList.length);
                      final randomJoke = jokeList[randomIndex];
                      setState(() {
                        jokeController.text = randomJoke['value'];
                        dateController.text = randomJoke['created_at'];
                        urlController.text = randomJoke['url'];
                      });
                    },
                    child: Text('Give me a Joke')),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      jokeController.clear();
                      dateController.clear();
                      urlController.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Reset'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    jokeController.dispose();
    dateController.dispose();
    urlController.dispose();
    super.dispose();
  }
}
