import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Recipes();
  }
}

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Recipes';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title)
        ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Chicken Soup'),
            onTap: () {
              
            }
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => New()),
         );
        },
        child: Icon(Icons.add),
      ),
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingredients')
      ),
      body: ListView(
      ),
    );
  }
}

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (
        RaisedButton (
          onPressed: () {
            Navigator.pop(context);
            Icon(Icons.arrow_back);
          },
        )
        ),
        title: Text('New Recipe'),
      ),
    );
  }
}

