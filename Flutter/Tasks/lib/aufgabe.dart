import 'package:flutter/material.dart';

void main() {
  runApp(AufgabeT2());
}

class AufgabeT2 extends StatelessWidget {
  const AufgabeT2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello AppAkademie'),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Page2()));
              },
              child: Text('Go to next page'),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.square,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Selected Colors'),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            )
          ],
        ));
  }
}
