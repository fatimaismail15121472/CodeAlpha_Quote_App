import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotePage(),
    );
  }
}

class QuotePage extends StatefulWidget {
  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  List<Map<String,String>> quotes = [
    {"q": "The only way to do great work is to love what you do.", "a": "Steve Jobs"},
    {"q": "Believe you can and you're halfway there.", "a": "Roosevelt"},
    {"q": "Dream big and dare to fail.", "a": "Norman Vaughan"},
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CodeAlpha Quote App"), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('"${quotes[i]["q"]}"', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              SizedBox(height: 15),
              Text("- ${quotes[i]["a"]}", style: TextStyle(fontStyle: FontStyle.italic)),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){setState((){i = (i+1) % quotes.length;});}, child: Text("Next Quote"))
            ],
          ),
        ),
      ),
    );
  }
}
