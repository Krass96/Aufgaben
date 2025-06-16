import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(AufgabeAPI());
}

class AufgabeAPI extends StatefulWidget {
  const AufgabeAPI({super.key});

  @override
  State<AufgabeAPI> createState() => _AufgabeAPIState();
}

class _AufgabeAPIState extends State<AufgabeAPI>
    with SingleTickerProviderStateMixin {
  String joke = '';
  String createdAt = '';
  String url = '';
  bool isLoading = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  Future<void> fetchJoke() async {
    setState(() {
      isLoading = true;
      _controller.repeat();
    });
    try {
      await Future.delayed(Duration(seconds: 2));
      final response = await http.get(
          Uri.parse('https://api.chucknorris.io/jokes/random?category=dev'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          joke = data['value'];
          createdAt = data['created_at'];
          url = data['url'];
        });
      } else {
        setState(() {
          joke = 'Fehler beim Laden des Witzes!';
          createdAt = '';
          url = '';
        });
      }
    } catch (e) {
      setState(() {
        joke = 'Fehler: $e';
        createdAt = '';
        url = '';
      });
    } finally {
      setState(() {
        isLoading = false;
        _controller.stop();
      });
    }
  }

  void resetFields() {
    setState(() {
      joke = '';
      createdAt = '';
      url = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 300,
          title: Column(
            children: [
              Text(
                'Chuck Norris Jokes',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Image.asset(
                'assets/images/chuck_norris.png',
                width: 250,
                height: 250,
              )
            ],
          ),
          backgroundColor: Colors.amber,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.amber, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isLoading)
                    RotationTransition(
                        turns: _controller,
                        child: Center(
                          child: Image.asset(
                            'assets/images/chuck_norris.png',
                            width: 100,
                            height: 100,
                          ),
                        ))
                  else ...[
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: joke,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.amber),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                          'Created at: ${createdAt.isNotEmpty ? createdAt.substring(0, 10) : ''}'),
                    ),
                    SizedBox(height: 10),
                    if (url.isNotEmpty)
                      InkWell(
                        child: Text(
                          '---> Joke Link',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () async {
                          final uri = Uri.parse(url);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri);
                          }
                        },
                      )
                  ],
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: fetchJoke,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text(
                      'Give me a Joke',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: resetFields,
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
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
