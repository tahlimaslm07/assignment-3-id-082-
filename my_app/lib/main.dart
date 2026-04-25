import 'package:flutter/material.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Language Learning App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final Color mainColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Language Learning",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Learn languages in the easiest way",
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(179, 222, 222, 222),
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Column(
                children: [
                  Icon(Icons.language, size: 80, color: Colors.deepPurple),
                  SizedBox(height: 15),
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Practice vocabulary, get lessons & take part in quizzes.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: const Color.fromARGB(255, 255, 0, 166)),
                  ),
                  SizedBox(height: 25),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(double.infinity, 45),
                          elevation: 0,
                          side: BorderSide(color: mainColor),
                          foregroundColor: mainColor,
                        ),
                        child: Text("Start Learning"),
                      ),
                      SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 45),
                          side: BorderSide(color: mainColor),
                          foregroundColor: mainColor,
                        ),
                        child: Text("Login"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Choose your language • Learn at your pace",
              style: TextStyle(
                color: const Color.fromARGB(179, 0, 0, 0),
              ),
            )
          ],
        ),
      ),
    );
  }
}